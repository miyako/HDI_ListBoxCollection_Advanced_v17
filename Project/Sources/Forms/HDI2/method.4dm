Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		C_COLLECTION:C1488(colName)
		colName:=New collection:C1472()
		colName.push("John")
		colName.push("Quinn")
		colName.push("Andi")
		colName.push("Emmerich")
		colName.push("Merrile")
		colName.push("Ferguson")
		colName.push("Emlynne")
		colName.push("Onfre")
		colName.push("Estele")
		colName.push("Kale")
		colName.push("Gail")
		colName.push("James")
		colName.push("Dale")
		colName.push("Emilia")
		colName.push("Yvon")
		colName.push("Catlin")
		colName.push("Lindsay")
		colName.push("Gretal")
		
		C_COLLECTION:C1488(colLastName)
		colLastName:=New collection:C1472()
		colLastName.push("Doe")
		colLastName.push("Bergstrom")
		colLastName.push("Christiansen")
		colLastName.push("Prokopow")
		colLastName.push("Bernheimer")
		colLastName.push("Blodgett")
		colLastName.push("Hopper")
		colLastName.push("Lemon")
		colLastName.push("Harmeling")
		colLastName.push("Colnago")
		colLastName.push("Shan")
		colLastName.push("Smith")
		colLastName.push("Welsh-carroll")
		colLastName.push("Fan")
		colLastName.push("Fowler")
		colLastName.push("Macpherson")
		colLastName.push("Beal")
		colLastName.push("Guenther")
		
		ARRAY TEXT:C222(arrTitle; 0)
		ALL RECORDS:C47([Table_1:1])
		SELECTION TO ARRAY:C260([Table_1:1]Title:3; arrTitle)
		
		If (Is macOS:C1572)
			ST SET ATTRIBUTES:C1093(arrTitle{1}; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 16)
		Else 
			ST SET ATTRIBUTES:C1093(arrTitle{1}; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 14)
		End if 
		
		// Generate an object with the result to display
		GenerateResult
		
		// To format the results, I have three styles for the rows. I create an object with the three syles to save time and memory
		InitMetaValue
		
End case 