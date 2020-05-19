Class WiFIS.V201.BS.Laboratori.LaboratoriSoap Extends WiFIS.V201.BS.Service [ ProcedureBlock ]
{

/// Location and Revision of this file in Perforce (Auto-updating)
Parameter SrcVer = "$Id: //custom_ccrs/_common/tools/Iberia/WiFIS/latest/cls/WiFIS/V201/BS/Laboratori/LaboratoriSoap.xml#3 $";

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

/// This is the namespace used for types by the Service
Parameter TYPENAMESPACE = "http://pdm.isalut.gencat.net/Laboratori";

/// Namespaces of referenced classes will be used in the WSDL.
Parameter USECLASSNAMESPACES = 1;

Method ConfirmarAccio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.BS.s1.WSResposta(XMLNAME="AplicacioConfirmacioResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Laboratori/ConfirmarAccio", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = AplicacioConfirmacioResponse, WebMethod ]
{
 quit ..Forward(any,"Laboratori",$$$CurrentMethod)
}

Method DemanarCancelacio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.BS.s1.WSResposta(XMLNAME="LaboratoriPeticioCancelacioResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Laboratori/DemanarCancelacio", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = LaboratoriPeticioCancelacioResponse, WebMethod ]
{
 quit ..Forward(any,"Laboratori",$$$CurrentMethod)
}

Method DemanarNova(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.BS.s1.WSResposta(XMLNAME="LaboratoriPeticioNovaResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Laboratori/DemanarNova", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = LaboratoriPeticioNovaResponse, WebMethod ]
{
 quit ..Forward(any,"Laboratori",$$$CurrentMethod)
}

Method NotificarAddicional(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.BS.s1.WSResposta(XMLNAME="LaboratoriNotificacioAddicionalResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Laboratori/NotificarAddicional", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = LaboratoriNotificacioAddicionalResponse, WebMethod ]
{
 quit ..Forward(any,"Laboratori",$$$CurrentMethod)
}

Method NotificarCancelacio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.BS.s1.WSResposta(XMLNAME="LaboratoriNotificacioCancelacioResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Laboratori/NotificarCancelacio", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = LaboratoriNotificacioCancelacioResponse, WebMethod ]
{
 quit ..Forward(any,"Laboratori",$$$CurrentMethod)
}

Method NotificarResultats(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.BS.s1.WSResposta(XMLNAME="LaboratoriNotificacioResultatsResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Laboratori/NotificarResultats", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = LaboratoriNotificacioResultatsResponse, WebMethod ]
{
 quit ..Forward(any,"Laboratori",$$$CurrentMethod)
}

Method RebreMostres(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.BS.s1.WSResposta(XMLNAME="LaboratoriRecepcioMostresResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Laboratori/RebreMostres", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = LaboratoriRecepcioMostresResponse, WebMethod ]
{
 quit ..Forward(any,"Laboratori",$$$CurrentMethod)
}

Method RespondreAddicional(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.BS.s1.WSResposta(XMLNAME="LaboratoriRespostaAddicionalResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Laboratori/RespondreAddicional", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = LaboratoriRespostaAddicionalResponse, WebMethod ]
{
 quit ..Forward(any,"Laboratori",$$$CurrentMethod)
}

Method RespondreCancelacio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.BS.s1.WSResposta(XMLNAME="LaboratoriRespostaCancelacioResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Laboratori/RespondreCancelacio", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = LaboratoriRespostaCancelacioResponse, WebMethod ]
{
 quit ..Forward(any,"Laboratori",$$$CurrentMethod)
}

Method RespondreNova(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.BS.s1.WSResposta(XMLNAME="LaboratoriRespostaNovaResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Laboratori/RespondreNova", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = LaboratoriRespostaNovaResponse, WebMethod ]
{
 quit ..Forward(any,"Laboratori",$$$CurrentMethod)
}

}
