ROUTINE WiFIS [Type=INC]
#define ValError(%text)              	$$$ERROR($$$GeneralError,%text)

#define ValAssert(%sc,%expr,%error)		if (%expr) set %sc=$$$ADDSC(%sc,$$$ValError(%error))