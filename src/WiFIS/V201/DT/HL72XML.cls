/// Transforma un EnsLib.HL7.Message a formato XML utilizando el paquete ITB.
Class WiFIS.V201.DT.HL72XML Extends Ens.DataTransform
{

/// Location and Revision of this file in Perforce (Auto-updating)
Parameter SrcVer = "$Id: //custom_ccrs/_common/tools/Iberia/WiFIS/latest/cls/WiFIS/V201/DT/HL72XML.xml#1 $";

ClassMethod Transform(source As EnsLib.HL7.Message, target As WiFIS.V201.Msg.GenericReq) As %Status
{
	#dim tSC as %Status=$$$OK
	#dim errObj as %Exception.AbstractException
	#dim tServicio,tTipo
	#dim tmpHL7 as EnsLib.HL7.Message
	
	try {
		set target=##class(WiFIS.V201.Msg.GenericReq).%New()
		set target.Servicio = ##class(WiFIS.V201.Utils.Functions).WiFISServicio(source)
		set target.Tipo = ##class(WiFIS.V201.Utils.Functions).WiFISTipo(source)
		set target.Origen = source.GetValueAt("MSH:4.1")
		set target.Destino = source.GetValueAt("MSH:6.1")
		
		set tmpHL7 = source.%ConstructClone()
		do tmpHL7.BuildMap()
		do ##class(WiFIS.V201.Utils.Functions).WiFISClearMSH(tmpHL7)
		
		set target.DatosXML = ##class(ITB.HL7.Util.Convert).ER7ToXML(tmpHL7, .tSC)
		if $$$ISERR(tSC) $$$ThrowStatus(tSC)
	} catch(errObj) {
		set tSC = errObj.AsStatus()
	}
	
	do:$isobject(tmpHL7) tmpHL7.%Delete()
	
	quit tSC
}

}
