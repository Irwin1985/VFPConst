### VFPConst
Maps several constants codes into VFP public objects for simplicity usage in life cycle of yours Apps.

**Basic Usage:

```xBase
// Declare the VFPConst.prg file in any place of your Main prg file.
Set Procedure To "VFPConst" Additive

// Then Call the Load_Constants() function.
=LoadConstants()

// Now you can use all the Constants Public Objects declared inside the VFPConst.prg file.

// KeyPress Example

// Try guess which keys were pressed?
Procedure AnyControl.KeyPress
  lParameters nKeyCode, nShiftAltCtrl
  Do Case
  Case nKeyCode == KEYS.VK_INS_ALONE
    // Do some stuffs here
  Case nKeyCode == KEYS.VK_DEL_ALONE
    // Do another stuffs here.
  OtherWise
  EndCase

*====================================================================

// For more help using KeyPress control, press F1 for Vfp ```Inkey() function Help.

// For Boolean comparison
If (IsDigit("1") = LOGIC.TRUE)
  // Some stuffs goes here.
EndIf

// For http requests comparison

If (oHttp.ReadyState == HTTP.DONE)
  // Do some stuffs here
EndIf

// For Fields and Data Types usage
CREATE CURSOR qTest (PersonName C(50), PersonAge I, PersonImage W)
Do Case
Case qTest.PersonName  = TYPES.CHARACTER   
Case qTest.PersonAge   = TYPES.INT
Case qTest.PersonImage = TYPES.BLOB
OtherWise
EndCase
```
