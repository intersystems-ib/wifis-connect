/// Aplicación Zen para las páginas de configuración de WiFIS
Class WiFIS.V202.Web.App Extends %ZEN.application
{

/// Nombre de esta aplicación.
Parameter APPLICATIONNAME = "WiFIS Config";

/// URL de la página de inicio principal de esta aplicación.
Parameter HOMEPAGE;

/// Este bloque de estilo contiene definiciones de estilo CSS para toda la aplicación.
XData Style
{
<style type="text/css">

/*** Body and general styles ***/
body {
	margin: 0;
    padding: 0;
    color: #333;
    font-family: Tahoma, Geneva, sans-serif;
    font-size: 13px;
}
a {
    color: #333333;
} 
a:hover {
 	color: #D60808;
}
.error {
	background-color: #FFDFDF !important;
}
.warning {
	background-color: #FFFF99 !important;
}
input[type="text"]:disabled {
	background-color:#CFCFCF;
}

/*** Tables ***/
table.tpTable {
	border-width: 2px;
	border-color: #cfcfcf;
	-moz-border-radius: 5px 5px 5px 5px;
	-webkit-border-radius: 5px 5px 5px 5px;
	border-radius: 5px 5px 5px 5px;
	padding: 5px 5px 5px 5px;
	background-color: #e8eaeb;
	font-family: Tahoma, Geneva, sans-serif;
	font-size: 13px;
} 
table.tpTable caption {
	table-layout:fixed;
	font-size:10px; 
    background:transparent;
    font-weight:bold;
    text-align:left;
    border:0px;
}
.tpEven { 
	color: black; background: #f6f6f6; 
}
.tpOdd { 
	color: black; background: white; 
}
table.tpTable tr.tpSelected { 
	background: #264061; 
	color: white; 
}
tr.tpOdd:hover,tr.tpEven:hover { 
	background-color: #264061;
	color: white;
}
table.tpTable th {
	background: #d9d9d9;
	color: #222222;
	text-align: left;
	font-size: 13px;
    padding: 2px;
    overflow: hidden;
    border:0;
    text-align:center;
}
table.tpTable th.tpHdrSelected { 
	background: #67AEE5; 
}
table.tpFilterLayout td { 
	border: none; 
	background: transparent; 
}
table.tpTable td {
	border-color: #ffffff;
	border-width: 1px;
	padding: 0px 2px 0px 2px;
	text-align: center;
}
tr.tpResult:hover td {
	background-color: #264061;
	color: #ffffff;
}
tr.tpResult-new td {
	font-weight: bold;
}

/*** Inputs ***/
.text {
  width:400px;
  border-color:#CCCCCC #EFEFEF #EFEFEF #CCCCCC;
  border-bottom-left-radius:5px;
  border-bottom-right-radius:5px;
  border-top-left-radius:5px;
  border-top-right-radius:5px;
  border-style:solid;
  border-width:1px;
  color:#454545;
  padding:5px;
  border:1px solid #CACACA;
  font-size:12px;
  padding:5px;
  font-family: Tahoma, Geneva, sans-serif;
  margin-left:5px;
}

.required {
  font-weight: bold;
}

.textarea {
  border-color:#CCCCCC #EFEFEF #EFEFEF #CCCCCC;
  border-bottom-left-radius:5px;
  border-bottom-right-radius:5px;
  border-top-left-radius:5px;
  border-top-right-radius:5px;
  border-style:solid;
  border-width:1px;
  color:#454545;
  padding:5px;
  border:1px solid #CACACA;
  font-size:12px;
  padding:5px;
  font-family: Tahoma, Geneva, sans-serif;
  margin-left:5px;
}

input.search {
    background: url("img/searchoff25.png") no-repeat scroll 0 0 #ffffff;
    padding-left: 25px;
    width: 130px;
} 
input.user {
	background: url("img/user24.png") no-repeat scroll 0 0 #ffffff;
	padding-left: 25px;
    width: 130px;
} 
input.password {
	background: url("img/password24.png") no-repeat scroll 0 0 #ffffff;
	padding-left: 25px;
    width: 130px;
}


/*** Autocomplete overlays ***/
.ui-autocomplete {
	font-family: Tahoma, Geneva, sans-serif;
	max-height: 130px;
	width: 300px;
    overflow-y: auto;
    /* prevent horizontal scrollbar */
    overflow-x: hidden;
}
  
* html .ui-autocomplete {
    height: 130px;
    width: 300px;
    font-family: Tahoma, Geneva, sans-serif;
}
 
.ui-menu .ui-menu-item {
	font-family: Tahoma, Geneva, sans-serif;
	color:#454545;
	font-size:12px;
}

/*** Dialogs ***/​
.ui-dialog {
	font-family: Tahoma, Geneva, sans-serif;
	font-size: 13px;
	color: #454545;
}

.ui-dialog-title {
	font-family: Tahoma, Geneva, sans-serif;
	font-size: 13px;
	color: #454545;
}

.ui-widget {
	font-family: Tahoma, Geneva, sans-serif;
	font-size: 13px;
	color: #454545;
}

.ui-widget-content {
	font-family: Tahoma, Geneva, sans-serif;
	font-size: 13px;
	color: #454545;
}

/** Tabs **/
.tabGroupBody {
	background-color:transparent;
	border: 1;
	border-color:#cfcfcf;	
}
td.tabGroupButtonOn  {
	border-color:#cfcfcf;
	font-family: Tahoma, Geneva, sans-serif;
}
td.tabGroupButtonOff  {
	border-color:#cfcfcf;
	font-family: Tahoma, Geneva, sans-serif;
}
td.tabGroupExtra  {
	border-color:#cfcfcf;
}
td.tabGroupGapTd  {
	border-color:#cfcfcf;
}
table.tabGroupBar {
	border-color:#cfcfcf;
}

/** Dates **/
.dateTextDiv {
	border: 0;
	background-color: transparent;
}

/*** Expandable Categories ***/
.expandoNode {
	margin-top:0px;
	padding-bottom:0px;
}

.expandoNode a {
	font-weight:bold !important;
	color:black;
}


/*** Buttons ***/
.button {
	padding: 5px 10px;
	background: #264061;
	font-family: Arial, sans-serif;
	color: #ffffff;
	text-align: center;
	display: block;
	cursor: pointer
}
.button {
	border: 1px solid #264061;
	border-radius: 10px;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px
}

/** Other **/
.required {
	font-weight: bold;
}

</style>
}

}
