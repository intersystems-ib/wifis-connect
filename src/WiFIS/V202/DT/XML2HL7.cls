/// Transformacion de un HL7 en XML a ER7
Class WiFIS.V202.DT.XML2HL7 Extends Ens.DataTransform
{

ClassMethod Transform(source As WiFIS.V202.Msg.GenericReq, target As EnsLib.HL7.Message) As %Status
{
	#DIM tSC as %Status=$$$OK
	#DIM errObj as %Exception.AbstractException
	set target=""
	try {
		// esquema WIFIS (HL7 2.5) por defecto
		set schema="WIFIS"

		// esquema WIFIS (HL7 2.8)
		if source.Servicio="Notificacions",source.Tipo="NotificacioAlerta" {
			set schema="WIFISHL7V28"
		}

		set target = ##class(ITB.HL7.Util.Convert).XMLToER7(source.DatosXML, .tSC, schema)
		if $$$ISERR(tSC) $$$ThrowStatus(tSC)
		
		do ##class(WiFIS.V202.Utils.Functions).WiFISSetServicioTipo(source.Servicio, source.Tipo, .target)
	} catch(errObj) {
		set tSC=errObj.AsStatus()
	}
	quit tSC
}

}
