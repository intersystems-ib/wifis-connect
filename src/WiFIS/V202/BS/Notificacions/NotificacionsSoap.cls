Class WiFIS.V202.BS.Notificacions.NotificacionsSoap Extends WiFIS.V202.BS.Service [ ProcedureBlock ]
{

/// This is the namespace used by the Service
Parameter NAMESPACE = "http://tempuri.org/";

/// Use xsi:type attribute for literal types.
Parameter OUTPUTTYPEATTRIBUTE = 1;

/// Determines handling of Security header.
Parameter SECURITYIN = "ALLOW";

/// This is the name of the Service
Parameter SERVICENAME = "Notificacions";

/// This is the SOAP version supported by the service.
Parameter SOAPVERSION = 1.1;

/// This is the namespace used for types by the Service
Parameter TYPENAMESPACE = "http://pdm.isalut.gencat.net/Notificacions";

/// Namespaces of referenced classes will be used in the WSDL.
Parameter USECLASSNAMESPACES = 1;

Method ConfirmarAccio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.BS.s1.WSResposta(XMLNAME="AplicacioConfirmacioResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Notificacions/ConfirmarAccio", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = AplicacioConfirmacioResponse, WebMethod ]
{
 quit ..Forward(any,"Notificacions",$$$CurrentMethod)
}

Method NotificacioAlerta(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.BS.s1.WSResposta(XMLNAME="NotificacioAlertaResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Notificacions/NotificacioAlerta", SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 quit ..Forward(any,"Notificacions",$$$CurrentMethod)
}

Method NotificacioRealitzacio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.BS.s1.WSResposta(XMLNAME="NotificacioRealitzacioResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Notificacions/NotificacioRealitzacio", SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 quit ..Forward(any,"Notificacions",$$$CurrentMethod)
}

}
