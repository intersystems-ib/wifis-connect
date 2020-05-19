/// Operación que invoca a un jar externo (proxySAML) para generar ticket SAML para WiFIS.
Class WiFIS.V202.BO.SAMLjava Extends EnsLib.JavaGateway.AbstractOperation
{

/// Configurable settings for this operation.
Parameter SETTINGS = "ConfigurationFile:WiFIS, PropertiesFile:WiFIS, Address:Basic,Port:Basic,AdditionalPaths,ConnectTimeout,-ArchiveIO";

/// Ruta al fichero de configuración para generar ticket SAML.
Property ConfigurationFile As %String(MAXLEN = "");

/// Ruta al fichero de propiedades para generar ticket SAML.
Property PropertiesFile As %String(MAXLEN = "");

Method OnMessage(pRequest As Ens.StringContainer, Output pResponse As Ens.StringContainer) As %Status
{
	set ret = $$$OK
	
	try {
		set pResponse = ##class(Ens.StringContainer).%New()
		
		// abrir conexión Java Gateway
		#dim tJavaGateway as EnsLib.JavaGateway.JavaGateway
		$$$THROWONERROR(tSC, ..GetConnection(.tJavaGateway))
		
		// generar ticket 
		set pResponse.StringValue = ##class(hc3sa.saml.ProxyHC3SAML).getSAML(
		.tJavaGateway, // static. pasar conexión como 1er parámetro.
		..ConfigurationFile, 
		..PropertiesFile)

	} catch ex {
		set ret = ex.AsStatus()
	}
	quit ret
}

}
