/// Recuento de mensajes WiFIS que han pasado por la plataforma
Class WiFIS.Stats.Messages Extends (%Persistent, %XML.Adaptor)
{

/// Tipo (Entrada,Salida)
Property Tipo As %String(DISPLAYLIST = ",Entrada,Salida", VALUELIST = ",E,S") [ SqlColumnNumber = 2 ];

/// El Origen del Mensaje, segun MSH:4
Property Origen As %String [ SqlColumnNumber = 3 ];

/// El Destino del Mensaje, segun MSH:6
Property Destino As %String [ SqlColumnNumber = 4 ];

/// El Nombre del WebService llamado
Property Servicio As %String [ SqlColumnNumber = 5 ];

/// El Nombre del metodo llamado
Property Metodo As %String [ SqlColumnNumber = 6 ];

/// La Fecha y Hora de entrada del Mensaje
Property FechaHoraIn As %TimeStamp [ SqlColumnNumber = 7 ];

/// La Fecha y Hora de Salida de la Respuesta Synchrona
Property FechaHoraOut As %TimeStamp [ SqlColumnNumber = 8 ];

/// El Estado del Mensaje
Property Estado As %String(MAXLEN = 2048, TRUNCATE = 1) [ SqlColumnNumber = 9 ];

/// Añade estadisticas a la tabla
ClassMethod LogMsg(pTipo As %String, pServiceName As %String = "", pMethodName As %String = "", pOrigen As %String = "", pDestino As %String = "", pEstado As %String = "", pFechaHoraIn As %TimeStamp, pFechaHoraOut As %TimeStamp) As %Status
{
	#dim tSC as %Status=$$$OK
	#dim errObj as %Exception.AbstractException
	try {
		#dim pStat as WiFIS.Stats.Messages=##class(WiFIS.Stats.Messages).%New()
		set pStat.Tipo = pTipo
		set pStat.Servicio=pServiceName
		set pStat.Metodo=pMethodName
		set pStat.Origen=pOrigen
		set pStat.Destino=pDestino
		set pStat.Estado=pEstado
		set pStat.FechaHoraIn=pFechaHoraIn
		set pStat.FechaHoraOut=pFechaHoraOut
		$$$THROWONERROR(tSC,pStat.%Save())
	}catch(errObj) {
		set tSC=errObj.AsStatus()
	}
	quit tSC
}

Storage Default
{
<Data name="MessagesDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>FechaHora</Value>
</Value>
<Value name="3">
<Value>Servicio</Value>
</Value>
<Value name="4">
<Value>Metodo</Value>
</Value>
<Value name="5">
<Value>Origen</Value>
</Value>
<Value name="6">
<Value>Destino</Value>
</Value>
<Value name="7">
<Value>Estado</Value>
</Value>
<Value name="8">
<Value>FechaHoraIn</Value>
</Value>
<Value name="9">
<Value>FechaHoraOut</Value>
</Value>
<Value name="10">
<Value>Tipo</Value>
</Value>
</Data>
<DataLocation>^WiFIS.Stats.MessagesD</DataLocation>
<DefaultData>MessagesDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^WiFIS.Stats.MessagesD</IdLocation>
<IndexLocation>^WiFIS.Stats.MessagesI</IndexLocation>
<StreamLocation>^WiFIS.Stats.MessagesS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
