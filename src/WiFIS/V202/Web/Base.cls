/// Página Base de la aplicación
Class WiFIS.V202.Web.Base Extends %ZEN.Component.page
{

/// Nombre de clase de la aplicación a la que pertenece esta página.
Parameter APPLICATION = "WiFIS.V202.Web.App";

/// Nombre mostrado de esta página.
Parameter PAGENAME = "Base";

/// Dominio utilizado para la localización.
Parameter DOMAIN;

/// Este bloque de estilo contiene definiciones de estilo CSS específicas de la página.
XData Style
{
<style type="text/css">
#container {
	text-align:center;
}
#wrapper {
	width: 960px;
	margin: 0 auto;
	text-align: left;
}
#header {
	height: 90px;
	padding: 10px 5px 0px 5px;
	
	-moz-border-radius:0px 0px 10px 10px;
	-webkit-border-radius:0px 0px 10px 10px;
	border-radius:0px 0px 10px 10px;
	background-color: #E0E0E0;
}
#logo-wrapper {
	float:left;
	width:100px;
	margin-top:-10px;
	margin-right:20px;
}
#logo {
}
.title {
	margin-top:20px;
	font-size:25px;
	font-variant: small-caps;
}
</style>
}

/// Este bloque XML define el contenido de esta página.
XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
<page xmlns="http://www.intersystems.com/zen" title="Gestió de WiFIS">
<group id="container" layout="none">
<group id="wrapper" layout="none">
<group id="header" layout="none">
<group id="logo-wrapper" layout="none">
<group id="hospital-logo" layout="none"><image src="https://camo.githubusercontent.com/41542821164686fbb2bd7a2b458998600ec244b3/687474703a2f2f7777772e696e74657273797374656d732e636f6d2f6173736574732f73697465732f31302f343430342e706e67" width="150px"/></group>
</group>
<html id="title" enclosingClass="title">Configuració WiFIS</html> 
</group>
<spacer height="10" />
<pane paneName="paneContent"/>
</group>
</group>
</page>
}

}
