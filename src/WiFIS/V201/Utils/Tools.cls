Include (Ensemble, %ZEN.ReportUtil)

Class WiFIS.V201.Utils.Tools Extends %RegisteredObject
{

/// Location and Revision of this file in Perforce (Auto-updating)
Parameter SrcVer = "$Id: //custom_ccrs/_common/tools/Iberia/WiFIS/latest/cls/WiFIS/V201/Utils/Tools.xml#1 $";

/// Path of 7zip exe (used to build distribution package).
Parameter ZIP = "C:\Program Files\7-Zip\7zG.exe";

/// Create a distribution package
/// pSourcePath - Path to directory containing source files (classes, xml, etc.)
/// pTargetPAth - Path where distribution package will be created.
/// <example>
/// set source="C:\isc\p4\custom_ccrs\_common\tools\Iberia\WiFIS\latest"
/// set target="C:\Temp\"
/// set sc=##class(WiFIS.V201.Utils.Tools).MakeDist(source,target,"WiFISEasyConnect_2.2_2014")
/// </example>
ClassMethod MakeDist(pSourcePath As %String, pTargetPath As %String, pDistName As %String = "") As %Status
{
	set ret = $$$OK
	try {
		set version=##class(WiFIS.Info).#VERSION_"_"_##class(WiFIS.Info).#PORTING
		
		// normalize paths
		set source=##class(%File).NormalizeDirectory("", pSourcePath)
		set target=##class(%File).NormalizeDirectory("", pTargetPath)
		if ((source="")||(target="")) $$$ThrowStatus($$$ERROR($$$GeneralError,"source/target path incorrect"))
		
		// build zip file from source path excluding *.bak files
		set srcfiles = source_"*"
		if pDistName="" set pDistName="WiFISEasyConnect_"_version
		set distfile = target_pDistName_".zip"
		set cmd=""""_..#ZIP_""" a -tzip "_distfile_" "_srcfiles_" -mx=9 -xr!*.bak" 
		set err=$ZF(-1,cmd)
		if (err) $$$ThrowStatus($$$ERROR($$$GeneralError,"'"_cmd_"' returned error "_err))
	} catch ex {
		set ret = ex.AsStatus()
	}
	quit ret
}

}
