/// <h2>Paquete Conexión WiFIS</h2>
/// 
/// <h3>Clases para implementar circuitos del marco de interoperabilidad WiFIS de Catalunya</h3>
/// 
/// <h4>Cambios:</h4>
/// <ul>
///  	<li>1.0 - Versión Inicial</li>
///  	<li>1.1 - Revisión</li>
///  	<li>1.2 - Primera versión distribuida</li>
/// 	<li>1.3 - Datos WiFIS en MSH y no en NTE</li>
/// 	<li>1.4 - Paquete ITB (0.4)</li>
/// 	<li>1.5 - Paquete ITB (1.2), producción de test para eConsultes</li>
/// 	<li>1.6 - Paquete ITB (1.3), actualización aplicación ConfigCentro</li>
/// 	<li>1.7 - Actualización WiFIS V153. Refactor clases para utilizar estructura WiFIS.V153.*</li>
/// 	<li>1.8 - Actualización WSDL WiFIS V153. Añadido esquema HL7 WIFIS para OBX.5 con estructura datos OBX.2.</li>
/// 	<li>1.9 - Añadido: instalador, clases validación mensajes, mensaje Z77 a esquema WiFIS.</li>
/// 	<li>2.0 - Corregida definición SIU^Z77 en esquema WiFIS.</li>
/// 	<li>2.1 - Actualizado: clases validación para utilizar criterios Definicio_Requeriments_Validacions_Missatgeria_v1.5, Router WiFIS devuelve siempre la respuesta recibida.</li>
/// 	<li>2.2 - Actualizado: WiFIS V20, paquete ITB 1.5, instalador.</li>
/// 	<li>2.3 - Actualizado: WiFIS V21.</li>
/// 	<li>2.4 - Actualizado: WiFIS V2.0.1, para plataforma i-SISS-Cat, paquete ITB 1.7 </li>
/// 	<li>2.5 - Actualizado: incluido campo IDFlux en WSMissatge (WiFIS_Comu.xsd) que faltaba en WSDL WiFIS.</li>
/// 	<li>2.6 - Actualizado: WiFIS V2.0.1 (últimos cambios) + opciones generación ticket SAML con java</li>
/// 	<li>2.7 - Corregido: correspondencias origen/destino de segmento MSH (WiFIS V2.0.1), configuración de centros </li>
/// 	<li>2.8 - Corregido: parseo UTF8, registro errores y alertas en WiFIS.V202.BS.Service, aceptar SAMLTicket externo en WiFIS.V202.BP.Router</li>
/// 	<li>2.9 - Actualizado: utilizar %XML.StreamCharacter como entrada para los servicios para soportar mensajes con múltiples ficheros adjuntos</li>
/// 	<li>3.0 - Actualizado: WiFIS V2.0.2 + conversión a formato UDL (IRIS, Health Connect) </li>
/// </ul>
Class WiFIS.Info Extends %RegisteredObject
{

Parameter VERSION = 3.0;

Parameter PORTING = 2019;

Parameter ITBMINVERSION = 3.3;

}
