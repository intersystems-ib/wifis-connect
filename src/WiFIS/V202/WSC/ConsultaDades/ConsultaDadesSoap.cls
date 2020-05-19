Class WiFIS.V202.WSC.ConsultaDades.ConsultaDadesSoap Extends %SOAP.WebClient [ ProcedureBlock ]
{

Method ConsultarCercaPacient(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.WSC.s1.WSResposta(XMLNAME="ConsultaCercaPacientResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("ConsultarCercaPacient","ConsultaCercaPacient").Invoke($this,"http://pdm.isalut.gencat.net/ConsultaDades/ConsultarCercaPacient",.any)
}

Method ConsultarDadesCliniques(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.WSC.s1.WSResposta(XMLNAME="ConsultaDadesCliniquesResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("ConsultarDadesCliniques","ConsultaDadesCliniques").Invoke($this,"http://pdm.isalut.gencat.net/ConsultaDades/ConsultarDadesCliniques",.any)
}

Method ConsultarDadesDemografiques(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.WSC.s1.WSResposta(XMLNAME="ConsultaDadesDemografiquesResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("ConsultarDadesDemografiques","ConsultaDadesDemografiques").Invoke($this,"http://pdm.isalut.gencat.net/ConsultaDades/ConsultarDadesDemografiques",.any)
}

Method ConsultarEstatOrdre(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.WSC.s1.WSResposta(XMLNAME="ConsultaEstatOrdreResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("ConsultarEstatOrdre","ConsultaEstatOrdre").Invoke($this,"http://pdm.isalut.gencat.net/ConsultaDades/ConsultarEstatOrdre",.any)
}

Method RespondreConsultaCercaPacient(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.WSC.s1.WSResposta(XMLNAME="ConsultaCercaPacientRespostaResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("RespondreConsultaCercaPacient","ConsultaCercaPacientResposta").Invoke($this,"http://pdm.isalut.gencat.net/ConsultaDades/RespondreConsultaCercaPacient",.any)
}

Method RespondreConsultaDadesCliniques(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.WSC.s1.WSResposta(XMLNAME="ConsultaDadesCliniquesRespostaResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("RespondreConsultaDadesCliniques","ConsultaDadesCliniquesResposta").Invoke($this,"http://pdm.isalut.gencat.net/ConsultaDades/RespondreConsultaDadesCliniques",.any)
}

Method RespondreConsultaDadesDemografiques(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.WSC.s1.WSResposta(XMLNAME="ConsultaDadesDemografiquesRespostaResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("RespondreConsultaDadesDemografiques","ConsultaDadesDemografiquesResposta").Invoke($this,"http://pdm.isalut.gencat.net/ConsultaDades/RespondreConsultaDadesDemografiques",.any)
}

Method RespondreConsultaEstatOrdre(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.WSC.s1.WSResposta(XMLNAME="ConsultaEstatOrdreRespostaResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("RespondreConsultaEstatOrdre","ConsultaEstatOrdreResposta").Invoke($this,"http://pdm.isalut.gencat.net/ConsultaDades/RespondreConsultaEstatOrdre",.any)
}

/// This is the URL used to access the web service.
Parameter LOCATION = "http://localhost/WiFISIntegration/services/ConsultaDades.asmx";

/// This is the namespace used by the Service
Parameter NAMESPACE = "http://tempuri.org/";

/// Use xsi:type attribute for literal types.
Parameter OUTPUTTYPEATTRIBUTE = 1;

/// Determines handling of Security header.
Parameter SECURITYIN = "ALLOW";

/// This is the name of the Service
Parameter SERVICENAME = "ConsultaDades";

/// This is the SOAP version supported by the service.
Parameter SOAPVERSION = 1.1;

/// This is the namespace used for types by the Service
Parameter TYPENAMESPACE = "http://pdm.isalut.gencat.net/ConsultaDades";

}
