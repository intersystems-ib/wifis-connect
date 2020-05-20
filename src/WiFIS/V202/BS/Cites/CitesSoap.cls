Class WiFIS.V202.BS.Cites.CitesSoap Extends WiFIS.V202.BS.Service [ ProcedureBlock ]
{

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

/// Namespaces of referenced classes will be used in the WSDL.
Parameter USECLASSNAMESPACES = 1;

Method ConfirmarAccio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.BS.s1.WSResposta(XMLNAME="AplicacioConfirmacioResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Cites/ConfirmarAccio", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = AplicacioConfirmacioResponse, WebMethod ]
{
 quit ..Forward(any,"Cites",$$$CurrentMethod)
}

Method DemanarDisponibilitat(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.BS.s1.WSResposta(XMLNAME="CitaPeticioDisponibilitatResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Cites/DemanarDisponibilitat", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = CitaPeticioDisponibilitatResponse, WebMethod ]
{
 quit ..Forward(any,"Cites",$$$CurrentMethod)
}

Method DemanarNova(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.BS.s1.WSResposta(XMLNAME="CitaPeticioNovaResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Cites/DemanarNova", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = CitaPeticioNovaResponse, WebMethod ]
{
 quit ..Forward(any,"Cites",$$$CurrentMethod)
}

Method NotificarCancelacio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.BS.s1.WSResposta(XMLNAME="CitaNotificacioCancelacioResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Cites/NotificarCancelacio", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = CitaNotificacioCancelacioResponse, WebMethod ]
{
 quit ..Forward(any,"Cites",$$$CurrentMethod)
}

Method NotificarNoPresentacio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.BS.s1.WSResposta(XMLNAME="CitaNotificacioNoPresentacioResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Cites/NotificarNoPresentacio", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = CitaNotificacioNoPresentacioResponse, WebMethod ]
{
 quit ..Forward(any,"Cites",$$$CurrentMethod)
}

Method NotificarProgramacio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.BS.s1.WSResposta(XMLNAME="CitaNotificacioProgramacioResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Cites/NotificarProgramacio", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = CitaNotificacioProgramacioResponse, WebMethod ]
{
 quit ..Forward(any,"Cites",$$$CurrentMethod)
}

Method NotificarReprogramacio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.BS.s1.WSResposta(XMLNAME="CitaNotificacioReprogramacioResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Cites/NotificarReprogramacio", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = CitaNotificacioReprogramacioResponse, WebMethod ]
{
 quit ..Forward(any,"Cites",$$$CurrentMethod)
}

Method RespondreDisponibilitat(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.BS.s1.WSResposta(XMLNAME="CitaPeticioDisponibilitatResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Cites/RespondreDisponibilitat", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = CitaRespostaDisponibilitatResponse, WebMethod ]
{
 quit ..Forward(any,"Cites",$$$CurrentMethod)
}

Method RespondreNova(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.BS.s1.WSResposta(XMLNAME="CitaRespostaNovaResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Cites/RespondreNova", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = CitaRespostaNovaResponse, WebMethod ]
{
 quit ..Forward(any,"Cites",$$$CurrentMethod)
}

}
