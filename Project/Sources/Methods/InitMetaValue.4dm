//%attributes = {"invisible":true}
  // Build meta objects using colours from hidden reference rectangles
  // so that the listbox styling adapts to dark/light mode.

C_LONGINT:C283($fg; $bg)

  // Read the rendered fill colours from the hidden reference objects
OBJECT GET RGB COLORS:C1074(*; "refDoubleOutOfRange"; $fg; $bg)
C_TEXT:C284($doubleOutOfRangeFill)
$doubleOutOfRangeFill:=RGBToHex($bg)

OBJECT GET RGB COLORS:C1074(*; "refOutOfRange"; $fg; $bg)
C_TEXT:C284($outOfRangeFill)
$outOfRangeFill:=RGBToHex($bg)

OBJECT GET RGB COLORS:C1074(*; "refPerfectValue"; $fg; $bg)
C_TEXT:C284($perfectValueFill)
$perfectValueFill:=RGBToHex($bg)

C_OBJECT:C1216($meta)
$meta:=New object:C1471
$meta.doubleOutOfRange:=New object:C1471(\
"fontStyle"; "italic"; \
"fontWeight"; "bold"; \
"cell"; New object:C1471(\
"ColValue"; New object:C1471(\
"fill"; $doubleOutOfRangeFill; \
"stroke"; "#FFFFFF")))

$meta.outOfRange:=New object:C1471(\
"fontStyle"; "italic"; \
"cell"; New object:C1471(\
"ColValue"; New object:C1471(\
"fill"; $outOfRangeFill)))

$meta.perfectValue:=New object:C1471(\
"cell"; New object:C1471(\
"ColValue"; New object:C1471(\
"fill"; $perfectValueFill)))

Form:C1466.meta:=$meta