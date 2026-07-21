//%attributes = {"invisible":true}
//****************************************//
// Decorate method
//
// $0 : the meta object
//****************************************//


If (OB Get type:C1230(This:C1470; "value")=Is real:K8:4)
	If (This:C1470.value>(This:C1470.max*2))
		$0:=Form:C1466.meta.doubleOutOfRange
		
	Else 
		If ((This:C1470.value>This:C1470.max) | (This:C1470.value<This:C1470.min))
			$0:=Form:C1466.meta.outOfRange
			
		Else 
			$0:=Form:C1466.meta.perfectValue
			
		End if 
		
	End if 
	
Else   // (OB Get type($oTmp;"value")=Is text)
	Case of 
		: (This:C1470.value="Non-imunized")
			$0:=Form:C1466.meta.outOfRange
			
		: (This:C1470.value="Blurred")
			$0:=Form:C1466.meta.outOfRange
			
		: (This:C1470.value="Opaque")
			$0:=Form:C1466.meta.doubleOutOfRange
			
		Else 
			$0:=Form:C1466.meta.perfectValue
			
	End case 
	
End if 




