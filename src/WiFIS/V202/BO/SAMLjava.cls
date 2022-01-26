/// Operación que invoca a un jar externo (proxySAML) para generar ticket SAML para WiFIS.
Class WiFIS.V201.BO.SAMLjava Extends EnsLib.JavaGateway.AbstractOperation
{

/// Configurable settings for this operation.
Parameter SETTINGS = "ConfigurationFile:WiFIS, PropertiesFile:WiFIS, Address:Basic,Port:Basic,AdditionalPaths,ConnectTimeout,-ArchiveIO";

/// Ruta al fichero de configuración para generar ticket SAML.
Property ConfigurationFile As %String(MAXLEN = "");

/// Ruta al fichero de propiedades para generar ticket SAML.
Property PropertiesFile As %String(MAXLEN = "");

Method OnInit() As %Status
{
	// If a TCP port isn't configured, the operation won't work!
	If '..Port Quit $$$ERROR($$$EnsErrGeneral, "A valid Port must be configured (current port is '"_..Port_"'")
	
	Set ..TCPDevice = "|TCP|"_(+..Port)
	
	// This forces the connection to start at production start.
	
	#if $system.Version.GetMajor()>2020
		Set ..TCPDevice = "|TCP|"_(+..Port)
		Set tEndpoint = ..Address_";"_..Port_";"_$namespace
		SET tSC = ##class(EnsLib.JavaGateway.Service).ConnectGateway(tEndpoint, .tGateway, ..ConnectTimeout+10, ..AdditionalPaths)
	#else
		Set tSC = ..GetConnection(.tGateway, ..ConnectTimeout+10)
	#endif
	
	If 'tSC {
		Set tSC = $$$ERROR($$$EnsErrGeneral, "Java Gateway operation failed to connect to the Gateway Server")
	}
	
	// This host terminates if a connection can't be obtained.
	Quit tSC
}

Method OnMessage(pRequest As Ens.StringContainer, Output pResponse As Ens.StringContainer) As %Status
{
	set ret = $$$OK
	
	try {
		set pResponse = ##class(Ens.StringContainer).%New()
		
		// abrir conexión Java Gateway
		#dim tJavaGateway as EnsLib.JavaGateway.JavaGateway
		
		#if $system.Version.GetMajor()>2020
			Set ..TCPDevice = "|TCP|"_(+..Port)
			Set tEndpoint = ..Address_";"_..Port_";"_$namespace
			SET tSC = ##class(EnsLib.JavaGateway.Service).ConnectGateway(tEndpoint, .tJavaGateway, ..ConnectTimeout, ..AdditionalPaths)
			$$$ThrowOnError(tSC)
		#else
			$$$THROWONERROR(tSC, ..GetConnection(.tJavaGateway))
		#endif
		
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
