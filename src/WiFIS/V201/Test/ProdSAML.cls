/// Producción de ejemplo para probar componentes WiFIS utilizando ticket SAML
Class WiFIS.V201.Test.ProdSAML Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="WiFIS.V201.Test.ProdSAML" TestingEnabled="true" LogGeneralTraceEvents="true">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Setting Target="Adapter" Name="ShutdownTimeout">5</Setting>
  <Setting Target="Adapter" Name="UpdateTimeout">5</Setting>
  <Item Name="Leer HL7 ER7 Fichero" Category="Salida" ClassName="EnsLib.HL7.Service.FileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="MessageSchemaCategory">WIFIS</Setting>
    <Setting Target="Host" Name="TargetConfigNames">WiFIS_Crear_Msg</Setting>
    <Setting Target="Adapter" Name="FilePath">C:\Test\WIFIS\inHL7</Setting>
    <Setting Target="Adapter" Name="ArchivePath">C:\Test\WIFIS\archivedHL7</Setting>
    <Setting Target="Adapter" Name="FileSpec">*.hl7</Setting>
    <Setting Target="Host" Name="ArchiveIO">1</Setting>
    <Setting Target="Adapter" Name="Charset">UTF-8</Setting>
    <Setting Target="Host" Name="IgnoreInboundAck">0</Setting>
  </Item>
  <Item Name="WiFIS_Crear_Msg" Category="Salida" ClassName="WiFIS.V201.Test.BP.CrearMsg" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
  </Item>
  <Item Name="WiFIS_Router_V201" Category="Salida" ClassName="WiFIS.V201.BP.Router" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="TargetConfigName"></Setting>
    <Setting Target="Host" Name="SAMLJava">1</Setting>
  </Item>
  <Item Name="WiFIS_Procesar_Msg" Category="Entrada" ClassName="WiFIS.V201.Test.BP.ProcesarMsg" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
  </Item>
  <Item Name="Escribir HL7 XML Fichero" Category="Entrada" ClassName="ITB.HL7.BO.FileXMLOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Adapter" Name="FilePath">C:\Test\WIFIS\outHL7</Setting>
    <Setting Target="Host" Name="ArchiveIO">1</Setting>
    <Setting Target="Host" Name="MessageSchemaCategory">WIFIS</Setting>
    <Setting Target="Adapter" Name="Charset">UTF-8</Setting>
  </Item>
  <Item Name="Escribir HL7 ER7 Fichero" Category="Entrada" ClassName="EnsLib.HL7.Operation.FileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Adapter" Name="FilePath">C:\Test\WIFIS\outHL7</Setting>
    <Setting Target="Host" Name="Filename">%f_%Q.hl7</Setting>
    <Setting Target="Host" Name="ArchiveIO">1</Setting>
  </Item>
  <Item Name="WiFIS.V201.BS.Cites.CitesSoap" Category="Entrada" ClassName="WiFIS.V201.BS.Cites.CitesSoap" PoolSize="0" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="TargetConfigName">WiFIS_Procesar_Msg</Setting>
  </Item>
  <Item Name="WiFIS_Cites_BO_V201" Category="Salida" ClassName="WiFIS.V201.BO.WIFISHL7Port" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="WebServiceClientClass">WiFIS.V201.WSC.Cites.CitesSoap</Setting>
    <Setting Target="Adapter" Name="WebServiceURL">http://localhost:57773/wifisws/WiFIS.V201.BS.Cites.CitesSoap.cls</Setting>
  </Item>
  <Item Name="WiFIS.V201.BS.ConsultaDades.ConsultaDadesSoap" Category="Entrada" ClassName="WiFIS.V201.BS.ConsultaDades.ConsultaDadesSoap" PoolSize="0" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="TargetConfigName">WiFIS_Procesar_Msg</Setting>
  </Item>
  <Item Name="WiFIS_ConsultaDades_BO_V201" Category="Salida" ClassName="WiFIS.V201.BO.WIFISHL7Port" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="WebServiceURL">http://localhost:57773/wifisws/WiFIS.V201.BS.ConsultaDades.ConsultaDadesSoap.cls</Setting>
    <Setting Target="Adapter" Name="WebServiceClientClass">WiFIS.V201.WSC.ConsultaDades.ConsultaDadesSoap</Setting>
  </Item>
  <Item Name="WiFIS.V201.BS.Derivacions.DerivacionsSoap" Category="Entrada" ClassName="WiFIS.V201.BS.Derivacions.DerivacionsSoap" PoolSize="0" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="TargetConfigName">WiFIS_Procesar_Msg</Setting>
  </Item>
  <Item Name="WiFIS_Derivacions_BO_V201" Category="Salida" ClassName="WiFIS.V201.BO.WIFISHL7Port" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="WebServiceClientClass">WiFIS.V201.WSC.Derivacions.DerivacionsSoap</Setting>
    <Setting Target="Adapter" Name="WebServiceURL">http://localhost:57773/wifisws/WiFIS.V201.BS.Derivacions.DerivacionsSoap.cls</Setting>
  </Item>
  <Item Name="WiFIS.V201.BS.Laboratori.LaboratoriSoap" Category="Entrada" ClassName="WiFIS.V201.BS.Laboratori.LaboratoriSoap" PoolSize="0" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="TargetConfigName">WiFIS_Procesar_Msg</Setting>
  </Item>
  <Item Name="WiFIS_Laboratori_BO_V201" Category="Salida" ClassName="WiFIS.V201.BO.WIFISHL7Port" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="WebServiceClientClass">WiFIS.V201.WSC.Laboratori.LaboratoriSoap</Setting>
    <Setting Target="Adapter" Name="WebServiceURL">http://localhost:57773/wifisws/WiFIS.V201.BS.Laboratori.LaboratoriSoap.cls</Setting>
  </Item>
  <Item Name="WiFIS.V201.BS.Notificacions.NotificacionsSoap" Category="Entrada" ClassName="WiFIS.V201.BS.Notificacions.NotificacionsSoap" PoolSize="0" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="TargetConfigName">WiFIS_Procesar_Msg</Setting>
  </Item>
  <Item Name="WiFIS_Notificacions_BO_V201" Category="Salida" ClassName="WiFIS.V201.BO.WIFISHL7Port" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="WebServiceClientClass">WiFIS.V201.WSC.Notificacions.NotificacionsSoap</Setting>
    <Setting Target="Adapter" Name="WebServiceURL">http://localhost:57773/wifisws/WiFIS.V201.BS.Notificacions.NotificacionsSoap.cls</Setting>
  </Item>
  <Item Name="Ens.Alert" Category="" ClassName="EnsLib.EMail.AlertOperation" PoolSize="1" Enabled="false" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="SAMLjava" Category="JAVA" ClassName="WiFIS.V201.BO.SAMLjava" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="ConfigurationFile">C:\Test\HC3SA\config\hccsa.properties</Setting>
    <Setting Target="Host" Name="PropertiesFile">C:\Test\HC3SA\config\parameters.properties</Setting>
  </Item>
  <Item Name="JavaGateway" Category="JAVA" ClassName="EnsLib.JavaGateway.Service" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="ClassPath">C:\Test\HC3SA\lib\Utils.jar;C:\Test\HC3SA\lib\jdk1.5\bcprov-jdk15-134.jar;C:\Test\HC3SA\lib\jdk1.5\xmlsec-1.3.0.jar;C:\Test\HC3SA\lib\jdk1.5\xmlsec-1.3.0-commons-logging.jar;C:\Test\HC3SA\lib\jdk1.5\jargs-1.0.jar;C:\Test\HC3SA\lib\jdk1.5\log4j-1.2.13.jar;C:\Test\HC3SA\lib\jdk1.5\xmltooling-1.0-TP2-jdk-1.5.jar;C:\Test\HC3SA\lib\jdk1.5\retroweaver-rt-1.2.4.jar;C:\Test\HC3SA\lib\jdk1.5\httpclient-3.0.1.jar;C:\Test\HC3SA\lib\jdk1.5\joda-time-1.3.jar;C:\Test\HC3SA\lib\jdk1.5\httpclient-3.0.1-commons-codec-1.3.jar;C:\Test\HC3SA\lib\jdk1.5\opensaml-2.0-TP2-jdk-1.5.jar;C:\Test\HC3SA\lib\jdk1.5\javolution.jar;C:\Test\HC3SA\lib\HCCsa.jar;C:\Test\HC3SA\hc3saSamlProxy.jar;C:\Test\HC3SA\lib\xml\resolver-2.9.1.jar;C:\Test\HC3SA\lib\xml\serializer-2.9.1.jar;C:\Test\HC3SA\lib\xml\xalan-2.7.1.jar;C:\Test\HC3SA\lib\xml\xercesImpl-2.9.1.jar;C:\Test\HC3SA\lib\xml\xml-apis-2.9.1.jar;</Setting>
    <Setting Target="Host" Name="JDKVersion">JDK17</Setting>
    <Setting Target="Host" Name="JVMArgs">-Dfile.encoding=UTF-8 -Djavax.xml.parsers.DocumentBuilderFactory=org.apache.xerces.jaxp.DocumentBuilderFactoryImpl</Setting>
    <Setting Target="Host" Name="JavaHome">C:\Program Files\Java\jdk1.8.0_111</Setting>
    <Setting Target="Host" Name="Logfile">c:\temp\gateway.log</Setting>
  </Item>
  <Item Name="Leer HL7 XML Fichero" Category="Salida" ClassName="ITB.HL7.BS.FileXMLService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">C:\Test\WIFIS\inHL7</Setting>
    <Setting Target="Adapter" Name="FileSpec">*.xml</Setting>
    <Setting Target="Adapter" Name="ArchivePath">C:\Test\WIFIS\archivedHL7</Setting>
    <Setting Target="Host" Name="TargetConfigNames">WiFIS_Crear_Msg</Setting>
    <Setting Target="Host" Name="MessageSchemaCategory">WIFIS</Setting>
  </Item>
</Production>
}

/// Location and Revision of this file in Perforce (Auto-updating)
Parameter SrcVer = "$Id: //custom_ccrs/_common/tools/Iberia/WiFIS/latest/cls/WiFIS/V201/Test/ProdSAML.xml#2 $";

}