/// Ejemplo de Business Process que recibe un WiFIS.Msg.GenericReq, devuelve una respuesta WiFISOK, transforma el mensaje a HL7 y lo envía para escribir en un fichero. 
Class WiFIS.V202.Test.BP.ProcesarMsg Extends Ens.BusinessProcessBPL
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='WiFIS.V202.Msg.GenericReq' response='WiFIS.V202.WSC.s1.WSResposta' height='2000' width='2000' >
<context>
<property name='msgHL7' type='EnsLib.HL7.Message' instantiate='0' >
</property>
<property name='statusValidacion' type='%Status' instantiate='0' >
</property>
<property name='informeValidacion' type='%Stream.Object' instantiate='0' >
</property>
</context>
<sequence xend='200' yend='650' >
<transform name='XML 2 HL7' class='WiFIS.V202.DT.XML2HL7' source='request' target='context.msgHL7' xpos='200' ypos='250' >
<annotation><![CDATA[Convertir HL7 de XML a ER7]]></annotation>
</transform>
<code name='Respuesta WiFIS' xpos='200' ypos='350' >
<![CDATA[  set response = ##class(WiFIS.V202.Utils.Functions).WiFISRespostaOK()]]>
</code>
<call name='Escribir HL7 ER7 Fichero' target='Escribir HL7 ER7 Fichero' async='1' xpos='200' ypos='450' >
<request type='EnsLib.HL7.Message' >
<assign property="callrequest" value="context.msgHL7" action="set" />
</request>
<response type='Ens.Response' />
</call>
<call name='Escribir HL7 XML Fichero' target='Escribir HL7 XML Fichero' async='1' xpos='200' ypos='550' >
<request type='EnsLib.HL7.Message' >
<assign property="callrequest" value="context.msgHL7" action="set" />
</request>
<response type='Ens.Response' />
</call>
</sequence>
</process>
}

/// Activa la validación de mensajes. Muestra en el log de eventos mensajes de error de validación (si los hay) del mensaje según WiFIS.
Property Validate As %Boolean [ InitialExpression = 0 ];

/// Sólo si se activa validación de mensajes. Nombre de destino al que enviar el informe de validación de un mensaje (texto).
Property ValidationReportTarget As %String(MAXLEN = 500);

Parameter SETTINGS = "Validate:Basic,ValidationReportTarget:Basic:selector?context={Ens.ContextSearch/ProductionItems?targets=1&productionName=@productionId},-ThrottleDelay,ReplyCodeActions,RetryInterval,AlertRetryGracePeriod:Alerting,FailureTimeout,QueueCountAlert:Alerting,QueueWaitAlert:Alerting";

Storage Default
{
<Data name="ProcesarMsgDefaultData">
<Subscript>"ProcesarMsg"</Subscript>
<Value name="1">
<Value>Validate</Value>
</Value>
<Value name="2">
<Value>ValidationReportTarget</Value>
</Value>
</Data>
<DefaultData>ProcesarMsgDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
