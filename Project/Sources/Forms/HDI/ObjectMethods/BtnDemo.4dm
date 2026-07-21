//the button already has "accept" standard action
If (FORM Event:C1606.code=On Clicked:K2:4)
	
	If (Form:C1466.quit)
		INVOKE ACTION:C1684(ak return to design mode:K73:2)
	Else 
		
		var $window : Integer
		$window:=Open form window:C675("HDI2"; Plain form window:K39:10; Horizontally centered:K39:1; Vertically centered:K39:4)
		//pass on the window title which is used as identifier
		SET WINDOW TITLE:C213(Get window title:C450(Current form window:C827); $window)
		DIALOG:C40("HDI2"; Form:C1466; *)
		
	End if 
	
End if 
