/// Mensaje WiFIS genérico que se utiliza en producción Ensemble.
/// Es una peticion que contiene: TipoMensaje, HL7XML, Origen, Destino, etc.
Class WiFIS.V201.Msg.GenericReq Extends Ens.Request
{

/// Location and Revision of this file in Perforce (Auto-updating)
Parameter SrcVer = "$Id: //custom_ccrs/_common/tools/Iberia/WiFIS/latest/cls/WiFIS/V201/Msg/GenericReq.xml#3 $";

/// El tipo de Mensaje, ponemos el nombre del WebMethod que ha sido llamado, se rellena desde el BS
Property Tipo As %String(MAXLEN = 128);

/// El Contenido del Mensaje
Property DatosXML As %XML.GlobalCharacterStream;

/// El Destino del Mensaje, campo MSH:6, se rellena desde el BS, via XPATH
Property Destino As %String(MAXLEN = 50);

/// El Origen del Mensaje, campo MSH:4, se rellena desde el BS, via XPATH
Property Origen As %String(MAXLEN = 50);

/// El Nombre del Servicio/Web Service llamado (Cites,ComandesCliniques, eConsultes),
/// Sirve para determinar la propiedad donde reside la URL del destino.
Property Servicio As %String(MAXLEN = 50);

/// La URL del Destino. Este campo se rellena desde el BP, via una tabla de Lookup
Property URL As %String(MAXLEN = 4096);

/// Ticket SAML precalculado que debe utilizarse en la llamada al webservice
Property SAMLTicket As %String(MAXLEN = "");

Storage Default
{
<Data name="GenericReqDefaultData">
<Subscript>"GenericReq"</Subscript>
<Value name="1">
<Value>Tipo</Value>
</Value>
<Value name="2">
<Value>DatosXML</Value>
</Value>
<Value name="3">
<Value>Destino</Value>
</Value>
<Value name="4">
<Value>Origen</Value>
</Value>
<Value name="5">
<Value>Servicio</Value>
</Value>
<Value name="6">
<Value>URL</Value>
</Value>
<Value name="7">
<Value>SAMLTicket</Value>
</Value>
</Data>
<DefaultData>GenericReqDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
