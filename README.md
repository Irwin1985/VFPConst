### VFPConst
Maps several constants codes into VFP public objects for simplicity usage in life cycle of yours Apps.

**Basic Usage:

```xBase
// Declare the VFPConst.prg file in any place of your Main prg file.
Set Procedure To "VFPConst" Additive

// Use Public Variable or _Screen Property for instantiate the Const object
Public Const
Const = NewObject("Const", "VFPConst.prg")

// Now you can use all the Constants inside the VFPConst.prg file.

// KeyPress Example

// Try guess which keys were pressed...
Procedure AnyControl.KeyPress
  lParameters nKeyCode, nShiftAltCtrl
  Do Case
  Case nKeyCode == Const.KeyBoard.vk_Ins_Alone
    // Do some stuffs here
  Case nKeyCode == Const.KeyBoard.VK_Del_Alone
    // Do another stuffs here.
  OtherWise
  EndCase

*====================================================================

// For more help using KeyPress control, press F1 for Vfp Inkey() function Help.

// For Boolean comparison
If (IsDigit("1") = Const.Logic.True)
  // Some stuffs goes here.
EndIf

// For http requests comparison

If (oHttp.ReadyState == Const.Http.Done)
  // Do some stuffs here
EndIf

// For Fields and Data Types usage
CREATE CURSOR qTest (PersonName C(50), PersonAge I, PersonImage W)
Do Case
Case qTest.PersonName  = Const.Types.Character
Case qTest.PersonAge   = Const.Types.Int
Case qTest.PersonImage = Const.Types.Blob
OtherWise
EndCase

// Very Difficult?, once you get used to it, it'll worth it.
```
