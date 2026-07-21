//%attributes = {"invisible":true}
C_OBJECT:C1216($oDefinition)
$oDefinition:=JSON Parse:C1218(Document to text:C1236(Get 4D folder:C485(Current resources folder:K5:16)+"bloodanalysis.json"))


C_OBJECT:C1216(oExam)
C_COLLECTION:C1488($colCategory; $colTest; $tmpCol)

$colCategory:=New collection:C1472


C_TEXT:C284($categoryName)

For each ($categoryName; $oDefinition.definition)
	
	$tmpCol:=$oDefinition.definition[$categoryName]
	
	$colTest:=New collection:C1472
	For ($i; 0; $tmpCol.length-1)
		
		If ($tmpCol[$i].random.max=Null:C1517)
			//text
			$val:=Random:C100%$tmpCol[$i].random.text.length
			$colTest.push(New object:C1471("name"; $tmpCol[$i].type; "value"; $tmpCol[$i].random.text[$val]; "info"; $tmpCol[$i].description))
			
		Else 
			//number
			$val:=(Random:C100%($tmpCol[$i].random.max-$tmpCol[$i].random.min+1))+$tmpCol[$i].random.min
			If ($val=0)
				$colTest.push(New object:C1471("name"; $tmpCol[$i].type; "value"; $tmpCol[$i].random.text; "unit"; $tmpCol[$i].unit; "min"; $tmpCol[$i].minRange; "max"; $tmpCol[$i].maxRange; "info"; $tmpCol[$i].description))
			Else 
				$colTest.push(New object:C1471("name"; $tmpCol[$i].type; "value"; $val; "unit"; $tmpCol[$i].unit; "min"; $tmpCol[$i].minRange; "max"; $tmpCol[$i].maxRange; "info"; $tmpCol[$i].description))
			End if 
			
		End if 
	End for 
	
	$colCategory.push(New object:C1471("category"; $categoryName; "test"; $colTest))
	
End for each 


oExam:=New object:C1471("lastname"; colLastName[Random:C100%(colLastName.length-1)]; "firstname"; colName[Random:C100%(colName.length-1)]; "lastnameDoctor"; colLastName[Random:C100%(colLastName.length-1)]; "firstnameDoctor"; colName[Random:C100%(colName.length-1)]; "date"; !2018-01-04!; "results"; $colCategory)