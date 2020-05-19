/// Ejemplo de Business Process que recibe un HL7 ER7, lo convierte a XML y lo empaqueta en un WiFIS.Msg.GenericReq para enviarlo al enrutador WiFIS.
Class WiFIS.V202.Test.BP.CrearMsg Extends Ens.BusinessProcessBPL
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='EnsLib.HL7.Message' response='Ens.Response' height='2000' width='2000' >
<context>
<property name='GenericReq' type='WiFIS.V202.Msg.GenericReq' instantiate='0' >
</property>
</context>
<sequence xend='200' yend='450' >
<transform name='HL7 2 XML' class='WiFIS.V202.DT.HL72XML' source='request' target='context.GenericReq' xpos='200' ypos='250' >
<annotation><![CDATA[Transformar HL7 de ER7 a XML
y crear un WiFIS.V202.Msg.GenericReq]]></annotation>
</transform>
<call name='WiFIS Router' target='WiFIS_Router_V202' async='1' xpos='200' ypos='350' >
<annotation><![CDATA[Enviar GenericReq a enrutador WiFIS para que lo envíe donde corresponde]]></annotation>
<request type='WiFIS.V202.Msg.GenericReq' >
<assign property="callrequest" value="context.GenericReq" action="set" />
</request>
<response type='Ens.Response' />
</call>
</sequence>
</process>
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
