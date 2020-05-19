/// Clase de Business Operation (SOAP) genérico para clientes webservice WiFIS.
/// Modificaciones en clases generadas WSDL:
///   WiFIS.V202.WSC.s1.WSResposta: heredar de Ens.Response
///   WiFIS.V202.WSC.s1.WsMissatge: heredar de %SerialObject
/// 
Class WiFIS.V202.BO.WIFISHL7Port Extends Ens.BusinessOperation [ ProcedureBlock ]
{

Parameter ADAPTER = "EnsLib.SOAP.OutboundAdapter";

/// This is the default message handler.  All request types not declared in the message map are delivered here
Method OnMessage(pReq As WiFIS.V202.Msg.GenericReq, Output pResp As WiFIS.V202.WSC.s1.WSResposta) As %Status
{
	#dim tSC as %Status=$$$OK
	#dim errObj as %Exception.AbstractException
	#dim tResult as WiFIS.WSC.V202.s1.WSResposta
	
	try {
		$$$TRACE("OnMessage: Tipo="_pReq.Tipo_", URL="_pReq.URL)
		if pReq.URL'="" {
			set ..Adapter.WebServiceURL=pReq.URL
		}
		$$$TRACE("URL utilizada: "_..Adapter.WebServiceURL)
 		
 		// SAML
 		if pReq.SAMLTicket'="" {
	 		set tHeader = ##class(WiFIS.V202.Xml.SAMLjavaHeader).%New()
		 	set tHeader.content = $replace(pReq.SAMLTicket, "<?xml version=""1.0"" encoding=""UTF-8""?>", "")
		 	do ..Adapter.%Client.HeadersOut.SetAt(tHeader, "Security")
 		}
 		
 		// llamar cliente webservice
 		set tFechaHoraOut = $zdt($h,3)
 		set tSC = ..Adapter.InvokeMethod(pReq.Tipo,.pResp,pReq.DatosXML)
 		
 		// recuperar el código de la respuesta (para estadísticas)
 		set tCodi=""
 		if $$$ISOK(tSC),$isobject(pResp) {
			set:pResp.LlistaMissatges.Size>0 tCodi=pResp.LlistaMissatges.GetAt(1).codi
 		} else {
	 		set tCodi = $system.Status.GetOneErrorText(tSC)
 		}	
 		
 		// guardar estadísticas WiFIS
 		do ##class(WiFIS.Stats.Messages).LogMsg("S",pReq.Servicio,pReq.Tipo,pReq.Origen,pReq.Destino,$g(tCodi),$zdt($h,3),tFechaHoraOut)
 		
 		if $$$ISERR(tSC) $$$ThrowStatus(tSC)
 		
	} catch (errObj) {
		$$$TRACE("Error WiFIS BO")
		set tSC=errObj.AsStatus()
	}
	quit tSC
}

}
