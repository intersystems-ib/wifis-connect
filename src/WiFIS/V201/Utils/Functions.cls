/// Clase con funciones útiles para WiFIS reutilizables en distintos puntos.
Class WiFIS.V201.Utils.Functions Extends Ens.Rule.FunctionSet
{

/// Location and Revision of this file in Perforce (Auto-updating)
Parameter SrcVer = "$Id: //custom_ccrs/_common/tools/Iberia/WiFIS/latest/cls/WiFIS/V201/Utils/Functions.xml#1 $";

/// Devuelve WSResposta OK (respuesta síncrona) para un mensaje WiFIS
ClassMethod WiFISRespostaOK() As WiFIS.V201.BS.s1.WSResposta
{
	set tMsg = ##class(WiFIS.V201.BS.s1.WSResposta).%New()
	set tMsg.LlistaMissatges = ##class(%ListOfDataTypes).%New()
	do tMsg.LlistaMissatges.Insert(..WiFISMissatgeOK())
	quit tMsg
}

/// Devuelve un WSMissatge OK (se inserta en WSResposta) para un mensaje WiFIS
ClassMethod WiFISMissatgeOK() As WiFIS.V201.BS.s1.WSMissatge
{
	set tMsg = ##class(WiFIS.V201.BS.s1.WSMissatge).%New()
	set tMsg.codi = "WIFIS_OK"
	set tMsg.descripcio = "El missatge s’ha rebut correctament, està ben estructurat i conté la informació requerida"
	quit tMsg
}

/// Devuelve WSResposta inválida (error) (respuesta síncrona) para un mensaje WiFIS
ClassMethod WiFISRespostaInvalid(pText As %String) As WiFIS.V201.BS.s1.WSResposta
{
	set tMsg = ##class(WiFIS.V201.BS.s1.WSResposta).%New()
	set tMsg.LlistaMissatges = ##class(%ListOfDataTypes).%New()
	do tMsg.LlistaMissatges.Insert(..WiFISMissatgeInvalid(pText))
	quit tMsg
}

/// Devuelve un WSMissatge OK (se inserta en WSResposta) para un mensaje WiFIS
ClassMethod WiFISMissatgeInvalid(pText As %String) As WiFIS.V201.BS.s1.WSMissatge
{
	set tMsg = ##class(WiFIS.V201.BS.s1.WSMissatge).%New()
	set tMsg.codi = "WIFIS_INVALID"
	set tMsg.descripcio = pText
	quit tMsg
}

/// Devuelve el Servicio (WebService) WiFIS que contiene un mensaje HL7
ClassMethod WiFISServicio(pMsg As EnsLib.HL7.Message) As %String
{
	quit $piece(pMsg.GetValueAt("MSH:3.2"),"#",2)
}

/// Devuelve el Tipo (Método del WebService) WiFIS que contiene un mensaje HL7
ClassMethod WiFISTipo(pMsg As EnsLib.HL7.Message) As %String
{
	quit $piece(pMsg.GetValueAt("MSH:3.2"),"#",3)
}

/// Escribe el Servicio y Tipo WiFIS en un mensaje HL7
ClassMethod WiFISSetServicioTipo(pServicio As %String, pTipo As %String, ByRef pMsg As EnsLib.HL7.Message) As %Status
{
	do pMsg.SetValueAt(pMsg.GetValueAt("MSH:3.2")_"#"_pServicio_"#"_pTipo, "MSH:3.2",,.tSC)
	quit $$$OK
}

/// Restaura el segmento MSH de un mensaje HL7 y elimina los datos WiFIS
ClassMethod WiFISClearMSH(pMsg As EnsLib.HL7.Message) As %Status
{
	do pMsg.SetValueAt($piece(pMsg.GetValueAt("MSH:3.2"),"#",1),"MSH:3.2",,.tSC)
	quit $$$OK
}

}
