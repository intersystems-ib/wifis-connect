^INC^Save for Source Control^^~Format=Cache.S~^UTF8
%RO
WiFIS^INC^^^0
#define ValError(%text)              	$$$ERROR($$$GeneralError,%text)
.
#define ValAssert(%sc,%expr,%error)		if (%expr) set %sc=$$$ADDSC(%sc,$$$ValError(%error))



