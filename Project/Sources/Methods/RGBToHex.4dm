//%attributes = {"invisible":true}
  // Convert a longint RGB colour (0x00RRGGBB) to a "#RRGGBB" string
  // $1 : Longint - RGB colour value
  // $0 : Text - hex colour string

C_LONGINT:C283($1)
C_TEXT:C284($0)

C_LONGINT:C283($r; $g; $b)
$r:=($1 >> 16) & 0x0000FF
$g:=($1 >> 8) & 0x0000FF
$b:=$1 & 0x0000FF

C_TEXT:C284($hex)
$hex:=""

C_LONGINT:C283($i; $val)
C_TEXT:C284($digits)
$digits:="0123456789ABCDEF"

For ($i; 1; 3)
	Case of 
		: ($i=1)
			$val:=$r
		: ($i=2)
			$val:=$g
		: ($i=3)
			$val:=$b
	End case 
	$hex:=$hex+$digits[[$val\16+1]]+$digits[[$val%16+1]]
End for 

$0:="#"+$hex
