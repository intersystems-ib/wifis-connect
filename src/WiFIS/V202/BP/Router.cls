/// 
Class WiFIS.V202.BP.Router Extends Ens.BusinessProcessBPL [ ClassType = persistent, ProcedureBlock ]
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='WiFIS.V202.Msg.GenericReq' response='WiFIS.V202.BS.s1.WSResposta' height='2600' width='2000' >
<context>
<property name='BOResponse' type='WiFIS.V202.WSC.s1.WSResposta' initialexpression='##class(WiFIS.V202.WSC.s1.WSResposta).%New()' instantiate='0' >
</property>
<property name='TargetConfigName' type='%String' instantiate='0' >
</property>
<property name='BORequest' type='WiFIS.V202.Msg.GenericReq' instantiate='0' >
</property>
<property name='SAMLTicket' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='' />
</parameters>
</property>
</context>
<sequence xend='200' yend='2350' >
<scope name='scope5' xpos='200' ypos='250' xend='200' yend='2250' >
<code name='Inicializar BORequest' xpos='200' ypos='350' >
<![CDATA[ set context.BORequest=request]]>
</code>
<code name='Calcular Destino' xpos='200' ypos='450' >
<annotation><![CDATA[Calcular componente de la producción al que enviar el mensaje.]]></annotation>
<![CDATA[ set context.TargetConfigName="WiFIS_"_request.Servicio_"_BO_V202"]]>
</code>
<if name='Destino Fijo?' condition='..%Process.TargetConfigName&apos;=""' xpos='200' ypos='550' xend='200' yend='800' >
<annotation><![CDATA[TargetConfigName configurado para
enviar todos mensajes a un destino?]]></annotation>
<true>
<assign name="Establecer Destino Fijo" property="context.TargetConfigName" value="..%Process.TargetConfigName" action="set" xpos='470' ypos='700' />
</true>
<false>
<code name='Buscar URL tabla centros' xpos='200' ypos='700' >
<annotation><![CDATA[Comprobar si el destino tiene URL
configurada en tabla centros.]]></annotation>
<![CDATA[ set tSC=##class(WiFIS.Config.Centro).ObtenerURL(request.Destino,request.Servicio,.url)
 $$$ThrowOnError(tSC)
 
 set context.BORequest.URL = url
 ]]>
</code>
</false>
</if>
<trace name='Mostrar Destino' value='"TargetConfigName="_context.TargetConfigName' xpos='200' ypos='900' />
<trace name='Mostrar URL' value='"URL="_context.BORequest.URL' xpos='200' ypos='1000' />
<if name='SAMLTicket externo?' condition='request.SAMLTicket&apos;=""' xpos='200' ypos='1100' xend='200' yend='1350' >
<annotation><![CDATA[SAMLTicket externo 
informado en request?]]></annotation>
<true>
<assign name="Asignar SAMLTicket" property="context.SAMLTicket" value="request.SAMLTicket" action="set" xpos='335' ypos='1250' />
</true>
</if>
<if name='SAMLJava?' condition='..%Process.SAMLJava=1' xpos='200' ypos='1450' xend='200' yend='1700' >
<annotation><![CDATA[Calcular SAMLTicket
utilizando Java]]></annotation>
<true>
<call name='SAMLjava' target='SAMLjava' async='0' timeout='10' xpos='335' ypos='1600' >
<annotation><![CDATA[Generar ticket SAML (java)]]></annotation>
<request type='Ens.StringRequest' />
<response type='Ens.StringResponse' >
<assign property="context.SAMLTicket" value="callresponse.StringValue" action="set" />
</response>
</call>
</true>
</if>
<call name='Enviar WiFIS' target='@context.TargetConfigName' async='1' xpos='200' ypos='1800' >
<annotation><![CDATA[Enviar a BO WiFIS (TargetConfigName)]]></annotation>
<request type='WiFIS.V202.Msg.GenericReq' >
<assign property="callrequest.URL" value="context.BORequest.URL" action="set" />
<assign property="callrequest.DatosXML" value="context.BORequest.DatosXML" action="set" />
<assign property="callrequest.Destino" value="context.BORequest.Destino" action="set" />
<assign property="callrequest.Origen" value="context.BORequest.Origen" action="set" />
<assign property="callrequest.Servicio" value="context.BORequest.Servicio" action="set" />
<assign property="callrequest.Tipo" value="context.BORequest.Tipo" action="set" />
<assign property="callrequest.SAMLTicket" value="context.SAMLTicket" action="set" />
</request>
<response type='WiFIS.V202.WSC.s1.WSResposta' >
<assign property="context.BOResponse" value="callresponse" action="set" />
</response>
</call>
<sync name='Esperar Respuesta WiFIS' calls='Enviar WiFIS' timeout='900' allowresync='true' type='all' xpos='200' ypos='1900' />
<code name='Copiar Respuesta BO' xpos='200' ypos='2000' >
<annotation><![CDATA[Copiar respuesta BO para devolverla como resultado de este proceso.]]></annotation>
<![CDATA[ $$$TRACE("Copiar Respuesta WiFIS BO")
 if $isobject(context.BOResponse),$classname(context.BOResponse)="WiFIS.V202.WSC.s1.WSResposta" {
   for i=1:1:context.BOResponse.LlistaMissatges.Count() {
     set tError=##class(WiFIS.V202.BS.s1.WSMissatge).%New()
     set tError.codi=context.BOResponse.LlistaMissatges.GetAt(i).codi
     set tError.descripcio=context.BOResponse.LlistaMissatges.GetAt(i).descripcio
     set tError.IDFlux=context.BOResponse.LlistaMissatges.GetAt(i).IDFlux
     do response.LlistaMissatges.Insert(tError)
   }
 } else {
   if $isobject(context.BOResponse) {
     $$$LOGWARNING("recibido un "_$classname(context.BOResponse)_" en lugar de WSResposta como indica WiFIS V153")
     set response = context.BOResponse
   } else {
     $$$LOGWARNING("no se ha recibido un objeto válido como respuesta")
   }
 }]]>
</code>
<faulthandlers>
<catchall xpos='200' ypos='2100' xend='200' yend='550' >
<trace name='Catch' value='"Error en WiFIS Router"' xpos='200' ypos='250' />
<alert name='alert' value='"Catch!: "_$system.Status.GetOneErrorText(..%Context.%LastError)' xpos='200' ypos='350' />
<code name='Gestion de Error' xpos='200' ypos='450' >
<annotation><![CDATA[Añade info de Error a mensaje de Respuesta]]></annotation>
<![CDATA[ if ($$$ISERR(..%Context.%LastError)) {
   // copiar info de error al response
   set tError=##class(WiFIS.V202.BS.s1.WSMissatge).%New()
   set tError.codi="WIFIS_INVALID"
   set tError.descripcio=$system.Status.GetOneErrorText(..%Context.%LastError)
   do response.LlistaMissatges.Insert(tError)
 }]]>
</code>
</catchall>
</faulthandlers>
</scope>
</sequence>
</process>
}

/// Nombre de configuración de destino. Si se configura, todos los mensajes se enviarán a este destino siempre (no se calculará a qué destino hay que enviarlo en función del contenido).
Property TargetConfigName As %String(MAXLEN = 500);

/// Generar ticket SAML utilizando librerias java
Property SAMLJava As %Boolean;

Parameter SETTINGS = "SAMLJava:WiFIS,TargetConfigName:Basic:selector?context={Ens.ContextSearch/ProductionItems?targets=1&productionName=@productionId},-ThrottleDelay,ReplyCodeActions,RetryInterval,AlertRetryGracePeriod:Alerting,FailureTimeout,QueueCountAlert:Alerting,QueueWaitAlert:Alerting";

Storage Default
{
<Data name="RouterDefaultData">
<Subscript>"Router"</Subscript>
<Value name="1">
<Value>TargetConfigName</Value>
</Value>
<Value name="2">
<Value>SAMLJava</Value>
</Value>
</Data>
<DefaultData>RouterDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
