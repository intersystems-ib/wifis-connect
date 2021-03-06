/// Página para configurar centros
Class WiFIS.V202.Web.ConfigCentro Extends Base
{

Parameter APPLICATION = "WiFIS.V202.Web.App";

Parameter PAGENAME = "Config Centro";

Parameter DOMAIN;

XData Style
{
<style type="text/css">
</style>
}

XData paneContent [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
<pane xmlns="http://www.intersystems.com/zen">
<vgroup id="grpGray" width="100%">
<html  id="idAlert"></html>
<expando id="Xpando" animate="false" caption="Definició de Centres" expanded="true" width="100%"> 
<spacer height="10" />
<tablePane 
id="tbCentros" 
width="100%"
tableName="WiFIS_Config.Centro"
valueColumn="ID" 
maxRows="1000"
pageSize="5" 
useKeys="true" 
useSnapshot="true" 
showRowSelector="false"
onselectrow="zenPage.rowSelected(zenThis,which);"
 >
 <column colName="ID" hidden="true" />
 <column colName="Codigo" header="Codi" width="30" />
 <column colName="Nombre" header="Nom" width="100" />
 <column colName="URLCites" width="100" />
 <column colName="URLConsultaDades" width="100" />
 <column colName="URLDerivacions" width="100" />
 </tablePane>
<spacer height="10" />

<dataController id="ctrlCentro" modelClass="WiFIS.Config.Centro" modelId="" />
<fieldSet id ="fldCentro"  legend="Detalls" width="100%">
<form id="frmCentro"  labelPosition="left" controllerId="ctrlCentro">
<text id="txtCodigo" required="true" labelClass="required" label="Codi" size="20" title="Codi de centre en la missatgeria HL7" dataBinding="Codigo"/>
<text id="txtNombreCompleto" size="80" label="Nom" title="Nom Complet del Centre" dataBinding="Nombre" />
<text id="txtURLCites" label="URL Cites" size="80" title="URL a trucar per a l'enviament de Cites de WiFIS" dataBinding="URLCites" />
<text id="txtURLConsultaDades" label="URL ConsultaDades" size="80" title="URL a trucar per a l'enviament de ConsultaDades de WiFIS" dataBinding="URLConsultaDades" />
<text id="txtURLDerivacions" label="URL Derivacions" size="80" title="URL a trucar per a l'enviament de Derivacions de WiFIS" dataBinding="URLDerivacions" />
<text id="txtURLeConsultes" label="URL eConsultes" size="80" title="URL a trucar per a l'enviament de eConsultes de WiFIS" dataBinding="URLeConsultes" hidden="true"/>
<text id="txtURLLaboratori" label="URL Laboratori" size="80" title="URL a trucar per a l'enviament de Laboratori de WiFIS" dataBinding="URLLaboratori"/>
<text id="txtURLNotificacions" label="URL Notificacions" size="80" title="URL a trucar per a l'enviament de Notificacions de WiFIS" dataBinding="URLNotificacions"/>
<textarea id="txtDescripcion" cols="64" rows="4" 
	label="Decripció" title="Més detalls sobre aquest Centre" 
	dataBinding="Descripcion"
	 disabled="false"
/>

<spacer height="10" />

<hgroup id="btnGroup" cellAlign="right" width="100%">
<button id="btnNew" caption="Nou" title="Afegir el nou Centre destí" onclick="zenPage.newItem();"/>
<spacer width="10"/>
<button id="btnSave" caption="Guardar" title="Guardar el Centre destí seleccionat" onclick="zenPage.saveItem();"/>
<spacer width="10"/>
<button id="btnCancel" caption="Anul·lar" title="Anul·lar l'edició en curs" onclick="zenPage.cancelItem();"/>
<spacer width="10"/>
<button id="btnDelete" caption="Esborrar" title="Esborrar el Centre destí seleccionat" onclick="zenPage.deleteItem();"/>
<spacer width="10"/>
</hgroup>
</form>
</fieldSet>
<spacer height="10" />
</expando>
</vgroup>
</pane>
}

/// Row selected in pick list; update controller.
/// <var>which</var> indicates how this event was fired.
ClientMethod rowSelected(table, which) [ Language = javascript ]
{
	if ('keypress' == which) {
		// defer this action in case the user is arrowing through a number of items
		var id = table.getValue();
		var action = new Function("zenPage.showObject('"+id+"');"); 
		zenSetDeferredAction(action,200);
	}
	else {
		// select immediately
		var id = table.getValue();
		zenPage.showObject(id);
	}
}

/// Load the object with the given id into the form.
ClientMethod showObject(id) [ Language = javascript ]
{
	var controller = zenPage.getComponentById('ctrlCentro');
	controller.setModelId(id);
}

/// Create a new item to edit.
ClientMethod newItem() [ Language = javascript ]
{
	var controller = zenPage.getComponentById('ctrlCentro');
	controller.createNewObject();
	var frm=zenPage.getComponentById('frmCentro');
	frm.reset();
}

/// Cancel current edit.
ClientMethod cancelItem() [ Language = javascript ]
{
	if (confirm("Vol cancel·lar l'operació en curs ?")) {
		var controller = zenPage.getComponentById('ctrlCentro');
		var id = controller.getModelId();
		controller.setModelId(id);
	}
}

/// Delete current item from database
ClientMethod deleteItem() [ Language = javascript ]
{
	var controller = zenPage.getComponentById('ctrlCentro');
	var id = controller.getModelId();

	if ('' == id) {
		alert('No hi ha cap centre seleccionat');
	}
	else if (confirm('Vol esborrar aquest Centre destí ?')) {
		controller.deleteId(id);

		var table = zenPage.getComponentById('tbCentros');
		table.executeQuery();
	}
}

ClientMethod saveItem() [ Language = javascript ]
{
	var form = zenPage.getComponentById('frmCentro');
	form.save();
	
	// refresh the table
	var table = zenPage.getComponentById('tbCentros');
	table.executeQuery();
}

}
