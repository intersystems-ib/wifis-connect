Class WiFIS.V201.BS.ConsultaDades.ConsultaDadesSoap Extends WiFIS.V201.BS.Service [ ProcedureBlock ]
{

/// Location and Revision of this file in Perforce (Auto-updating)
Parameter SrcVer = "$Id: //custom_ccrs/_common/tools/Iberia/WiFIS/latest/cls/WiFIS/V201/BS/ConsultaDades/ConsultaDadesSoap.xml#3 $";

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

/// Namespaces of referenced classes will be used in the WSDL.
Parameter USECLASSNAMESPACES = 1;

Method ConsultarCercaPacient(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.BS.s1.WSResposta(XMLNAME="ConsultaCercaPacientResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/ConsultaDades/ConsultarCercaPacient", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = ConsultaCercaPacientResponse, WebMethod ]
{
 quit ..Forward(any,"ConsultaDades",$$$CurrentMethod)
}

Method ConsultarDadesCliniques(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.BS.s1.WSResposta(XMLNAME="ConsultaDadesCliniquesResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/ConsultaDades/ConsultarDadesCliniques", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = ConsultaDadesCliniquesResponse, WebMethod ]
{
 quit ..Forward(any,"ConsultaDades",$$$CurrentMethod)
}

Method ConsultarDadesDemografiques(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.BS.s1.WSResposta(XMLNAME="ConsultaDadesDemografiquesResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/ConsultaDades/ConsultarDadesDemografiques", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = ConsultaDadesDemografiquesResponse, WebMethod ]
{
 quit ..Forward(any,"ConsultaDades",$$$CurrentMethod)
}

Method ConsultarEstatOrdre(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.BS.s1.WSResposta(XMLNAME="ConsultaEstatOrdreResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/ConsultaDades/ConsultarEstatOrdre", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = ConsultaEstatOrdreResponse, WebMethod ]
{
 quit ..Forward(any,"ConsultaDades",$$$CurrentMethod)
}

Method RespondreConsultaCercaPacient(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.BS.s1.WSResposta(XMLNAME="ConsultaCercaPacientRespostaResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/ConsultaDades/RespondreConsultaCercaPacient", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = ConsultaCercaPacientRespostaResponse, WebMethod ]
{
 quit ..Forward(any,"ConsultaDades",$$$CurrentMethod)
}

Method RespondreConsultaDadesCliniques(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.BS.s1.WSResposta(XMLNAME="ConsultaDadesCliniquesRespostaResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/ConsultaDades/RespondreConsultaDadesCliniques", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = ConsultaDadesCliniquesRespostaResponse, WebMethod ]
{
 quit ..Forward(any,"ConsultaDades",$$$CurrentMethod)
}

Method RespondreConsultaDadesDemografiques(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.BS.s1.WSResposta(XMLNAME="ConsultaDadesDemografiquesRespostaResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/ConsultaDades/RespondreConsultaDadesDemografiques", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = ConsultaDadesDemografiquesRespostaResponse, WebMethod ]
{
 quit ..Forward(any,"ConsultaDades",$$$CurrentMethod)
}

Method RespondreConsultaEstatOrdre(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.BS.s1.WSResposta(XMLNAME="ConsultaEstatOrdreRespostaResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/ConsultaDades/RespondreConsultaEstatOrdre", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = ConsultaEstatOrdreRespostaResponse, WebMethod ]
{
 quit ..Forward(any,"ConsultaDades",$$$CurrentMethod)
}

}
