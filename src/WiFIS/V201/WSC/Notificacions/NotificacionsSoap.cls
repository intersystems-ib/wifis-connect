Class WiFIS.V201.WSC.Notificacions.NotificacionsSoap Extends %SOAP.WebClient [ ProcedureBlock ]
{

Method ConfirmarAccio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.WSC.s1.WSResposta(XMLNAME="AplicacioConfirmacioResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("ConfirmarAccio","AplicacioConfirmacio").Invoke($this,"http://pdm.isalut.gencat.net/Notificacions/ConfirmarAccio",.any)
}

Method NotificacioAlerta(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.WSC.s1.WSResposta(XMLNAME="NotificacioAlertaResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("NotificacioAlerta").Invoke($this,"http://pdm.isalut.gencat.net/Notificacions/NotificacioAlerta",.any)
}

Method NotificacioRealitzacio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.WSC.s1.WSResposta(XMLNAME="NotificacioRealitzacioResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("NotificacioRealitzacio").Invoke($this,"http://pdm.isalut.gencat.net/Notificacions/NotificacioRealitzacio",.any)
}

/// This is the URL used to access the web service.
Parameter LOCATION = "http://localhost/WiFISIntegration/services/Notificacions.asmx";

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

/// Location and Revision of this file in Perforce (Auto-updating)
Parameter SrcVer = "$Id: //custom_ccrs/_common/tools/Iberia/WiFIS/latest/cls/WiFIS/V201/WSC/Notificacions/NotificacionsSoap.xml#2 $";

/// This is the namespace used for types by the Service
Parameter TYPENAMESPACE = "http://pdm.isalut.gencat.net/Notificacions";

}
