/// Instalador WiFIS Easy Connect
Class WiFIS.V201.Utils.Installer Extends %RegisteredObject
{

/// Location and Revision of this file in Perforce (Auto-updating) 
Parameter SrcVer = "$Id: //custom_ccrs/_common/tools/Iberia/WiFIS/latest/cls/WiFIS/V201/Utils/Installer.xml#1 $";

/// Path to installation files
Property InstallPath As %String(MAXLEN = "");

/// Instalación de WiFIS Easy Connect + ITB.
/// pPath - Path a ficheros instalación WiFISEasyConnect.
ClassMethod Run(pPath As %String = "") As %Status
{
	set ret = $$$OK
	set retTxt = "OK"
	set obj = ..%New()
	try {
		do obj.Log("WiFISEasyConnect Installer started")
		set obj.InstallPath=pPath
		$$$THROWONERROR(tSC, obj.Install())
		$$$THROWONERROR(tSC, obj.Check())
	} catch ex {
		set ret = ex.AsStatus()
		set retTxt = $system.Status.GetOneErrorText(ret)
	}
	do obj.Log("WiFISEasyConnect Installer ended")
	do obj.Log("Status="_retTxt)
	quit ret
}

/// Instalación
Method Install() As %Status
{
	set ret = $$$OK
	try {
		set errorlog=""
		
		do ..Log("Install Files started")
		
		// normalize path
		if ..InstallPath="" $$$ThrowStatus($$$ERROR($$$GeneralError,"WiFIS path cannot be empty"))
		set wifis = ##class(%File).NormalizeDirectory("", ..InstallPath)
		if wifis="" $$$ThrowStatus($$$ERROR($$$GeneralError,"WiFIS path incorrect"))
		
		// inc
		set path = ##class(%File).SubDirectoryName(wifis,"inc",1)
		if path="" $$$ThrowStatus($$$ERROR($$$GeneralError,"WiFIS inc path incorrect"))
		do ..Log("__Importing includes...",1,0)
		do $system.OBJ.ImportDir(path, "*.inc", "/compile=1/display=none", .errorlog, 1, .imported, 0, .selectedlist)
		do ..Log("done",0,1)
		
		// check errors
		if +errorlog>0 {
			for i=1:1:errorlog do ..Log(errorlog(i),0,1)
			$$$ThrowStatus($$$ERROR($$$GeneralError,"Errors detected while importing includes"))
		}
		
		// cls
		set path = ##class(%File).SubDirectoryName(wifis,"cls",1)
		if path="" $$$ThrowStatus($$$ERROR($$$GeneralError,"WiFIS cls path incorrect"))
		do ..Log("__Importing classes...",1,0)
		do $system.OBJ.ImportDir(path, "*.xml", "/compile=1/display=none", .errorlog, 1, .imported, 0, .selectedlist)
		do ..Log("done",0,1)
		
		// check errors
		if +errorlog>0 {
			for i=1:1:errorlog do ..Log(errorlog(i),0,1)
			$$$ThrowStatus($$$ERROR($$$GeneralError,"Errors detected while importing classes"))
		}
		
		// schema
		set path = ##class(%File).SubDirectoryName(wifis,"schema",1)
		if path="" $$$ThrowStatus($$$ERROR($$$GeneralError,"WiFIS schema path incorrect"))
		do ..Log("__Importing hl7 schema...",1,0)
		do $system.OBJ.ImportDir(path, "*.xml", "/compile=1/display=none", .errorlog, 1, .imported, 0, .selectedlist)
		do ..Log("done",0,1)
		
		// check errors
		if +errorlog>0 {
			for i=1:1:errorlog do ..Log(errorlog(i),0,1)
			$$$ThrowStatus($$$ERROR($$$GeneralError,"Errors detected while importing classes"))
		}
		
		// lookup
		set path = ##class(%File).SubDirectoryName(wifis,"backup",1)_"hl7_WIFIS.Lookup.xml"
		if path="" $$$ThrowStatus($$$ERROR($$$GeneralError,"WiFIS hl7_WIFIS.Lookup.xml path incorrect"))
		do ..Log("__Importing lookup tables...",1,0)
		$$$THROWONERROR(tSC, ##class(Ens.Util.LookupTable).%Import(path))
		do ..Log("done",0,1)
		
		// check errors
		if +errorlog>0 {
			for i=1:1:errorlog do ..Log(errorlog(i),0,1)
			$$$ThrowStatus($$$ERROR($$$GeneralError,"Errors detected while importing classes"))
		}
		
		do ..Log("Install Files ended")
	} catch ex {
		set ret = ex.AsStatus()
	}
	quit ret
}

/// Comprobación WiFIS
Method Check() As %Status
{
	set ret = $$$OK
	try {
		do ..Log("WiFISEasyConnect Checking started")
		
		set info = "WiFIS.Info"
		set exist = ##class(%Dictionary.ClassDefinition).%ExistsId(info)
		if 'exist $$$ThrowStatus($$$ERROR($$$GeneralError,info_" does not exist!"))
		do ..Log("__"_info_".VERSION="_$parameter(info,"VERSION"))
		
		set itb = "ITB.Info"
		set itbversion = $parameter(itb,"VERSION")
		set itbmin=$parameter(info,"ITBMINVERSION")
		set ok = (itbversion >= itbmin)
		do ..Log("__"_info_".ITBMINVERSION="_itbmin)
		
		if 'ok $$$ThrowStatus($$$ERROR($$$GeneralError,"ITBMINVERSION="_itbmin_" and ITBVERSION="_itbversion))
		
		do ..Log("WiFISEasyConnect Checking ended")
	} catch ex {
		set ret = ex.AsStatus()
	}
	quit ret
}

/// Uninstalls WiFIS
/// *WARNING* it actually deletes classes!!
ClassMethod Uninstall() As %Status
{
	set ret = $$$OK
	try {
		do ..Log("Deleting includes...")
		$$$ThrowOnError(##class(%RoutineMgr).Delete("WiFIS.inc"))
		
		do ..Log("Deleting HL7 schemas...")
		$$$ThrowOnError(##class(EnsLib.HL7.SchemaDocument).Delete("WIFIS.HL7"))
		
		do ..Log("Deleting lookup tables...")
		&sql(delete from Ens_Util.LookupTable where TableName='hl7_WIFIS')
		
		do ..Log("Deleting classes...")
		$$$ThrowOnError($system.OBJ.DeletePackage("WiFIS"))
	} catch ex {
		set ret = ex.AsStatus()
	}
	quit ret
}

/// Log a message
/// pText - Text message
/// pTimeStamp - Add a timestamp
/// pNewLine - Add a new line
ClassMethod Log(pText As %String, pTimeStamp As %Boolean = 1, pNewLine As %Boolean = 1)
{
	write $case(pTimeStamp,1:"["_$zdt($h,3)_"] ",:"")_pText_$case(pNewLine,1:$$$NL,:"")
}

}
