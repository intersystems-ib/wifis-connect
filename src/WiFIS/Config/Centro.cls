/// Tabla que contiene la información de configuración de centros WiFIS.
/// Esta tabla se utiliza por WiFIS.VXYZ.BP.Router para comprobar si un destino tiene URLs configuradas.
Class WiFIS.Config.Centro Extends (%Persistent, %XML.Adaptor, %ZEN.DataModel.Adaptor)
{

/// Codigo del centro en los mensajes HL7
Property Codigo As %String [ Required ];

/// Nombre del centro	
Property Nombre As %String(MAXLEN = 300);

/// Descripción del centro
Property Descripcion As %String(MAXLEN = 1024);

/// URL ws Cites del centro
Property URLCites As %String(MAXLEN = 1024);

/// URL ws ConsultaDades del centro
Property URLConsultaDades As %String(MAXLEN = 1024);

/// URL ws Derivacions del centro
Property URLDerivacions As %String(MAXLEN = 1024);

/// DEPRECATED! URL ws eConsultes del centro.
Property URLeConsultes As %String(MAXLEN = 1024);

/// URL ws Laboratori del centro
Property URLLaboratori As %String(MAXLEN = 1024);

/// URL ws Notificacions del centro
Property URLNotificacions As %String(MAXLEN = 1024);

Index IxCodigo On Codigo [ Unique ];

/// Devuelve URL configuradas para un centro y un servicio determinado
/// pCodigo: código del centro
/// pServicio: servicio WiFIS (eConsultes, Cites, etc.)
/// pURL: parámetro en el que se devolverá la URL o "" (vacío) si no se encuentra
ClassMethod ObtenerURL(pCodigo As %String, pServicio As %String, Output pURL) As %Status
{
	set ret = $$$OK
	set pURL = ""
	set (cites, consultaDades, derivacions, econsultes, laboratori, notificacions)=""
	try {
		&sql(
		SELECT URLCites, URLConsultaDades, URLDerivacions, URLeConsultes, URLLaboratori, URLNotificacions 
		into :cites, :consultaDades, :derivacions, :econsultes, :laboratori, :notificacions
		FROM WiFIS_Config.Centro 
		WHERE Codigo=:pCodigo
		)
		if SQLCODE'=0 {
			set (cites, consultadades, derivacions, econsultes, laboratori, notificacions)=""
			quit
		}
		
		set servicio=$zconvert(pServicio,"l")
		set pURL=$case(servicio,"cites":cites,"consultadades":consultadades,"derivacions":derivacions,"econsultes":econsultes,"laboratori":laboratori,"notificacions":notificacions)
	} catch ex {
		set ret = ex.AsStatus()
	}
	quit ret
}

Storage Default
{
<Data name="CentroDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Codigo</Value>
</Value>
<Value name="3">
<Value>Nombre</Value>
</Value>
<Value name="4">
<Value>Descripcion</Value>
</Value>
<Value name="5">
<Value>URLCites</Value>
</Value>
<Value name="6">
<Value>URLConsultaDades</Value>
</Value>
<Value name="7">
<Value>URLDerivacions</Value>
</Value>
<Value name="8">
<Value>URLeConsultes</Value>
</Value>
<Value name="9">
<Value>URLLaboratori</Value>
</Value>
<Value name="10">
<Value>URLNotificacions</Value>
</Value>
</Data>
<DataLocation>^WiFIS.Config.CentroD</DataLocation>
<DefaultData>CentroDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^WiFIS.Config.CentroD</IdLocation>
<IndexLocation>^WiFIS.Config.CentroI</IndexLocation>
<StreamLocation>^WiFIS.Config.CentroS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
