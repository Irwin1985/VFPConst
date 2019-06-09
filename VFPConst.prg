*====================================================================
* VFPConst
*====================================================================
Define Class Const As Custom
	Keyboard	= .Null.
	Logic		= .Null.
	Http		= .Null.
	Msg			= .Null.
	Utils		= .Null.
	Types		= .Null.
	Hidden Internal
	Procedure Init
		With This
			.Internal	= .T.
			.Keyboard 	= Createobject("KeyBoard")
			.Internal	= .T.
			.Logic		= Createobject("Logic")
			.Internal	= .T.
			.Http		= Createobject("Http")
			.Internal	= .T.
			.Msg		= Createobject("Msg")
			.Internal	= .T.
			.Utils		= Createobject("Utils")
			.Internal	= .T.
			.Types		= Createobject("Types")
		Endwith

*====================================================================
	Procedure KeyBoard_Assign(vNewVal)
		If This.Internal
			This.Internal = .F.
			This.KeyBoard = m.vNewVal
		Else
			Return .Null.
		EndIf	

*====================================================================

	Procedure Logic_Assign(vNewVal)
		If This.Internal
			This.Internal = .F.
			This.Logic = m.vNewVal
		Else
			Return .Null.
		EndIf	

*====================================================================
	Procedure Http_Assign(vNewVal)
		If This.Internal
			This.Internal = .F.
			This.Http = m.vNewVal
		Else
			Return .Null.
		EndIf	

*====================================================================
	Procedure Msg_Assign(vNewVal)
		If This.Internal
			This.Internal = .F.
			This.Msg = m.vNewVal
		Else
			Return .Null.
		EndIf	

*====================================================================
	Procedure Utils_Assign(vNewVal)
		If This.Internal
			This.Internal = .F.
			This.Utils = m.vNewVal
		Else
			Return .Null.
		EndIf	

*====================================================================
	Procedure Types_Assign(vNewVal)
		If This.Internal
			This.Internal = .F.
			This.Types = m.vNewVal
		Else
			Return .Null.
		EndIf	

*====================================================================
Enddefine

*====================================================================
* Helper Classes
*====================================================================
Define Class Keyboard As Custom
	VK_F1_ALONE							=	28
	VK_F1_SHIFT							=	84
	VK_F1_CTRL							=	94
	VK_F1_ALT							=	104

	VK_F2_ALONE							=	-1
	VK_F2_SHIFT							=	85
	VK_F2_CTRL							=	95
	VK_F2_ALT							=	105

	VK_F3_ALONE							=	-2
	VK_F3_SHIFT							=	86
	VK_F3_CTRL							=	96
	VK_F3_ALT							=	106

	VK_F4_ALONE							=	-3
	VK_F4_SHIFT							=	87
	VK_F4_CTRL							=	97
	VK_F4_ALT							=	107

	VK_F5_ALONE							=	-4
	VK_F5_SHIFT							=	88
	VK_F5_CTRL							=	98
	VK_F5_ALT							=	108

	VK_F6_ALONE							=	-5
	VK_F6_SHIFT							=	89
	VK_F6_CTRL							=	99
	VK_F6_ALT							=	109

	VK_F7_ALONE							=	-6
	VK_F7_SHIFT							=	90
	VK_F7_CTRL							=	100
	VK_F7_ALT							=	110

	VK_F8_ALONE							=	-7
	VK_F8_SHIFT							=	91
	VK_F8_CTRL							=	101
	VK_F8_ALT							=	111

	VK_F9_ALONE							=	-8
	VK_F9_SHIFT							=	92
	VK_F9_CTRL							=	102
	VK_F9_ALT							=	112

	VK_F10_ALONE						=	-9
	VK_F10_SHIFT						=	93
	VK_F10_CTRL							=	103
	VK_F10_ALT							=	113

	VK_F11_ALONE						=	133
	VK_F11_SHIFT						=	135
	VK_F11_CTRL							=	137
	VK_F11_ALT							=	139

	VK_F12_ALONE						=	134
	VK_F12_SHIFT						=	136
	VK_F12_CTRL							=	138
	VK_F12_ALT							=	140

	VK_1_ALONE							=	49
	VK_1_SHIFT							=	33
	VK_1_CTRL							=	0
	VK_1_ALT							=	120

	VK_2_ALONE							=	50
	VK_2_SHIFT							=	64
	VK_2_CTRL							=	0
	VK_2_ALT							=	121

	VK_3_ALONE							=	51
	VK_3_SHIFT							=	35
	VK_3_CTRL							=	0
	VK_3_ALT							=	122

	VK_4_ALONE							=	52
	VK_4_SHIFT							=	36
	VK_4_CTRL							=	0
	VK_4_ALT							=	123

	VK_5_ALONE							=	53
	VK_5_SHIFT							=	37
	VK_5_CTRL							=	0
	VK_5_ALT							=	124

	VK_6_ALONE							=	54
	VK_6_SHIFT							=	94
	VK_6_CTRL							=	0
	VK_6_ALT							=	125

	VK_7_ALONE							=	55
	VK_7_SHIFT							=	38
	VK_7_CTRL							=	0
	VK_7_ALT							=	126

	VK_8_ALONE							=	56
	VK_8_SHIFT							=	42
	VK_8_CTRL							=	0
	VK_8_ALT							=	127

	VK_9_ALONE							=	57
	VK_9_SHIFT							=	40
	VK_9_CTRL							=	0
	VK_9_ALT							=	128

	VK_0_ALONE							=	48
	VK_0_SHIFT							=	41
	VK_0_CTRL							=	0
	VK_0_ALT							=	19

	VK_A_ALONE							=	97
	VK_A_SHIFT							=	65
	VK_A_CTRL							=	1
	VK_A_ALT							=	30

	VK_B_ALONE							=	98
	VK_B_SHIFT							=	66
	VK_B_CTRL							=	2
	VK_B_ALT							=	48

	VK_C_ALONE							=	99
	VK_C_SHIFT							=	67
	VK_C_CTRL							=	3
	VK_C_ALT							=	46

	VK_D_ALONE							=	100
	VK_D_SHIFT							=	68
	VK_D_CTRL							=	4
	VK_D_ALT							=	32

	VK_E_ALONE							=	101
	VK_E_SHIFT							=	69
	VK_E_CTRL							=	5
	VK_E_ALT							=	18

	VK_F_ALONE							=	102
	VK_F_SHIFT							=	70
	VK_F_CTRL							=	6
	VK_F_ALT							=	33

	VK_G_ALONE							=	103
	VK_G_SHIFT							=	71
	VK_G_CTRL							=	7
	VK_G_ALT							=	34

	VK_H_ALONE							=	104
	VK_H_SHIFT							=	72
	VK_H_CTRL							=	127
	VK_H_ALT							=	35

	VK_I_ALONE							=	105
	VK_I_SHIFT							=	73
	VK_I_CTRL							=	9
	VK_I_ALT							=	23

	VK_J_ALONE							=	106
	VK_J_SHIFT							=	74
	VK_J_CTRL							=	10
	VK_J_ALT							=	36

	VK_K_ALONE							=	107
	VK_K_SHIFT							=	75
	VK_K_CTRL							=	11
	VK_K_ALT							=	37

	VK_L_ALONE							=	108
	VK_L_SHIFT							=	76
	VK_L_CTRL							=	12
	VK_L_ALT							=	38

	VK_M_ALONE							=	109
	VK_M_SHIFT							=	77
	VK_M_CTRL							=	13
	VK_M_ALT							=	50

	VK_N_ALONE							=	110
	VK_N_SHIFT							=	78
	VK_N_CTRL							=	14
	VK_N_ALT							=	49

	VK_O_ALONE							=	111
	VK_O_SHIFT							=	79
	VK_O_CTRL							=	15
	VK_O_ALT							=	24

	VK_P_ALONE							=	112
	VK_P_SHIFT							=	80
	VK_P_CTRL							=	16
	VK_P_ALT							=	25

	VK_Q_ALONE							=	113
	VK_Q_SHIFT							=	81
	VK_Q_CTRL							=	17
	VK_Q_ALT							=	16

	VK_R_ALONE							=	114
	VK_R_SHIFT							=	82
	VK_R_CTRL							=	18
	VK_R_ALT							=	19

	VK_S_ALONE							=	115
	VK_S_SHIFT							=	83
	VK_S_CTRL							=	19
	VK_S_ALT							=	31

	VK_T_ALONE							=	116
	VK_T_SHIFT							=	84
	VK_T_CTRL							=	20
	VK_T_ALT							=	20

	VK_U_ALONE							=	117
	VK_U_SHIFT							=	85
	VK_U_CTRL							=	21
	VK_U_ALT							=	22

	VK_V_ALONE							=	118
	VK_V_SHIFT							=	86
	VK_V_CTRL							=	22
	VK_V_ALT							=	47

	VK_W_ALONE							=	119
	VK_W_SHIFT							=	87
	VK_W_CTRL							=	23
	VK_W_ALT							=	17

	VK_X_ALONE							=	120
	VK_X_SHIFT							=	88
	VK_X_CTRL							=	24
	VK_X_ALT							=	45

	VK_Y_ALONE							=	121
	VK_Y_SHIFT							=	89
	VK_Y_CTRL							=	25
	VK_Y_ALT							=	21

	VK_Z_ALONE							=	122
	VK_Z_SHIFT							=	90
	VK_Z_CTRL							=	26
	VK_Z_ALT							=	44

	VK_INS_ALONE						=	22
	VK_INS_SHIFT						=	22
	VK_INS_CTRL							=	146
	VK_INS_ALT							=	162

	VK_HOME_ALONE						=	1
	VK_HOME_SHIFT						=	55
	VK_HOME_CTRL						=	29
	VK_HOME_ALT							=	151

	VK_DEL_ALONE						=	7
	VK_DEL_SHIFT						=	7
	VK_DEL_CTRL							=	147
	VK_DEL_ALT							=	163

	VK_END_ALONE						=	6
	VK_END_SHIFT						=	49
	VK_END_CTRL							=	23
	VK_END_ALT							=	159

	VK_PAGE_UP_ALONE					=	18
	VK_PAGE_UP_SHIFT					=	57
	VK_PAGE_UP_CTRL						=	31
	VK_PAGE_UP_ALT						=	153

	VK_PAGE_DOWN_ALONE					=	3
	VK_PAGE_DOWN_SHIFT					=	51
	VK_PAGE_DOWN_CTRL					= 	30
	VK_PAGE_DOWN_ALT					= 	161

	VK_UP_ARROW_ALONE					=	5
	VK_UP_ARROW_SHIFT					=	56
	VK_UP_ARROW_CTRL					=	141
	VK_UP_ARROW_ALT						=	152

	VK_DOWN_ARROW_ALONE					=	24
	VK_DOWN_ARROW_SHIFT					=	50
	VK_DOWN_ARROW_CTRL					=	145
	VK_DOWN_ARROW_ALT					=	160

	VK_RIGHT_ARROW_ALONE				=	4
	VK_RIGHT_ARROW_SHIFT				=	54
	VK_RIGHT_ARROW_CTRL					=	2
	VK_RIGHT_ARROW_ALT					=	157

	VK_LEFT_ARROW_ALONE					=	19
	VK_LEFT_ARROW_SHIFT					=	52
	VK_LEFT_ARROW_CTRL					=	26
	VK_LEFT_ARROW_ALT					=	155

	VK_ESC_ALONE						=	27
	VK_ESC_SHIFT						=	0
	VK_ESC_CTRL							=	0
	VK_ESC_ALT							=	0

	VK_ENTER_ALONE						=	13
	VK_ENTER_SHIFT						=	13
	VK_ENTER_CTRL						=	10
	VK_ENTER_ALT						=	0

	VK_BACKSPACE_ALONE					=	127
	VK_BACKSPACE_SHIFT					=	127
	VK_BACKSPACE_CTRL					=	127
	VK_BACKSPACE_ALT					=	14

	VK_TAB_ALONE						=	9
	VK_TAB_SHIFT						=	15
	VK_TAB_CTRL							=	0
	VK_TAB_ALT							=	0

	VK_SPACEBAR_ALONE					=	32
	VK_SPACEBAR_SHIFT					=	32
	VK_SPACEBAR_CTRL					=	0
	VK_SPACEBAR_ALT						=	57

	VK_ACCENT_OR_NMARK_ALONE			=	96
	VK_ACCENT_OR_NMARK_SHIFT			=	126
	VK_ACCENT_OR_NMARK_CTRL				=	0
	VK_ACCENT_OR_NMARK_ALT				=	41

	VK_MIDDLE_LINE_OR_DOWN_LINE_ALONE	=	45
	VK_MIDDLE_LINE_OR_DOWN_LINE_SHIFT	=	95
	VK_MIDDLE_LINE_OR_DOWN_LINE_CTRL	=	0
	VK_MIDDLE_LINE_OR_DOWN_LINE_ALT		=	0

	VK_EQUAL_OR_PLUS_ALONE				=	61
	VK_EQUAL_OR_PLUS_SHIFT				=	43
	VK_EQUAL_OR_PLUS_CTRL				=	0
	VK_EQUAL_OR_PLUS_ALT				=	13

	VK_OPEN_BRACE_ALONE					=	91
	VK_OPEN_BRACE_SHIFT					=	123
	VK_OPEN_BRACE_CTRL					=	27
	VK_OPEN_BRACE_ALT					=	26

	VK_CLOSE_BRACE_ALONE				=	93
	VK_CLOSE_BRACE_SHIFT				=	125
	VK_CLOSE_BRACE_CTRL					=	29
	VK_CLOSE_BRACE_ALT					=	27

	VK_CLOSE_BRACE_ALONE				=	93
	VK_CLOSE_BRACE_SHIFT				=	125
	VK_CLOSE_BRACE_CTRL					=	29
	VK_CLOSE_BRACE_ALT					=	27

	VK_BACK_SLASH_OR_PIPELINE_ALONE		=	92
	VK_BACK_SLASH_OR_PIPELINE_SHIFT		=	124
	VK_BACK_SLASH_OR_PIPELINE_CTRL		=	28
	VK_BACK_SLASH_OR_PIPELINE_ALT		=	43

	VK_SEMICOLON_OR_DOUBLE_POINT_ALONE	=	59
	VK_SEMICOLON_OR_DOUBLE_POINT_SHIFT	=	58
	VK_SEMICOLON_OR_DOUBLE_POINT_CTRL	=	0
	VK_SEMICOLON_OR_DOUBLE_POINT_ALT	=	39

	VK_COMMA_OR_SMALLER_THAN_ALONE		=	44
	VK_COMMA_OR_SMALLER_THAN_SHIFT		=	60
	VK_COMMA_OR_SMALLER_THAN_CTRL		=	0
	VK_COMMA_OR_SMALLER_THAN_ALT		=	51

	VK_SLASH_OR_QUESTION_MARK_ALONE		=	47
	VK_SLASH_OR_QUESTION_MARK_SHIFT		=	63
	VK_SLASH_OR_QUESTION_MARK_CTRL		=	0
	VK_SLASH_OR_QUESTION_MARK_ALT		=	53

	Procedure VK_F1_ALONE_ASSIGN(vNewVal)
		Return .Null.
*====================================================================
	Procedure VK_F1_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F1_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F1_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F2_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F2_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F2_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F2_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F3_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F3_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F3_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F3_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F4_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F4_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F4_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F4_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F5_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F5_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F5_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F5_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F6_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F6_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F6_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F6_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F7_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F7_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F7_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F7_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F8_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F8_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F8_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F8_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F9_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F9_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F9_CTRL_ASSIGN(vNewVal)
		Return .Null.

	Procedure VK_F9_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F10_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F10_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F10_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F10_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F11_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F11_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F11_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F11_ALT_ASSIGN
		Return .Null.

*====================================================================
	Procedure VK_F12_ALONE_ASSIGN
		Return .Null.

*====================================================================
	Procedure VK_F12_SHIFT_ASSIGN
		Return .Null.

*====================================================================
	Procedure VK_F12_CTRL_ASSIGN
		Return .Null.

*====================================================================
	Procedure VK_F12_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_1_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_1_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_1_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_1_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_2_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_2_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_2_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_2_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_3_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_3_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_3_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_3_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_4_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_4_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_4_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_4_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_5_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_5_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_5_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_5_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_6_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_6_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_6_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_6_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_7_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_7_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_7_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_7_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_8_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_8_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_8_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_8_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_9_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_9_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_9_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_9_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_0_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_0_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_0_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_0_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_A_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_A_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_A_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_A_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_B_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_B_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_B_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_B_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_C_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_C_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_C_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_C_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_D_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_D_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_D_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_D_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_E_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_E_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_E_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_E_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_F_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_G_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_G_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_G_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_G_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_H_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_H_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_H_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_H_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_I_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_I_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_I_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_I_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_J_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_J_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_J_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_J_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_K_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_K_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_K_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_K_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_L_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_L_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_L_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_L_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_M_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_M_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_M_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_M_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_N_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_N_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_N_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_N_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_O_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_O_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_O_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_O_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_P_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_P_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_P_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_P_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_Q_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_Q_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_Q_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_Q_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_R_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_R_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_R_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_R_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_S_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_S_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_S_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_S_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_T_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_T_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_T_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_T_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_U_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_U_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_U_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_U_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_V_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_V_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_V_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_V_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_W_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_W_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_W_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_W_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_X_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_X_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_X_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_X_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_Y_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_Y_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_Y_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_Y_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_Z_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_Z_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_Z_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_Z_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_INS_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_INS_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_INS_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_INS_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_HOME_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_HOME_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_HOME_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_HOME_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_DEL_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_DEL_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_DEL_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_DEL_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_END_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_END_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_END_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_END_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_PAGE_UP_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_PAGE_UP_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_PAGE_UP_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_PAGE_UP_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_PAGE_DOWN_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_PAGE_DOWN_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_PAGE_DOWN_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_PAGE_DOWN_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_UP_ARROW_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_UP_ARROW_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_UP_ARROW_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_UP_ARROW_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_DOWN_ARROW_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_DOWN_ARROW_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_DOWN_ARROW_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_DOWN_ARROW_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_RIGHT_ARROW_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_RIGHT_ARROW_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_RIGHT_ARROW_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_RIGHT_ARROW_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_LEFT_ARROW_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_LEFT_ARROW_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_LEFT_ARROW_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_LEFT_ARROW_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_ESC_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_ESC_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_ESC_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_ESC_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_ENTER_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_ENTER_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_ENTER_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_ENTER_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_BACKSPACE_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_BACKSPACE_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_BACKSPACE_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_BACKSPACE_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_TAB_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_TAB_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_TAB_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_TAB_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_SPACEBAR_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_SPACEBAR_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_SPACEBAR_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_SPACEBAR_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_ACCENT_OR_NMARK_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_ACCENT_OR_NMARK_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_ACCENT_OR_NMARK_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_ACCENT_OR_NMARK_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_MIDDLE_LINE_OR_DOWN_LINE_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_MIDDLE_LINE_OR_DOWN_LINE_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_MIDDLE_LINE_OR_DOWN_LINE_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_MIDDLE_LINE_OR_DOWN_LINE_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_EQUAL_OR_PLUS_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_EQUAL_OR_PLUS_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_EQUAL_OR_PLUS_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_EQUAL_OR_PLUS_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_OPEN_BRACE_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_OPEN_BRACE_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_OPEN_BRACE_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_OPEN_BRACE_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_CLOSE_BRACE_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_CLOSE_BRACE_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_CLOSE_BRACE_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_CLOSE_BRACE_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_CLOSE_BRACE_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_CLOSE_BRACE_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_CLOSE_BRACE_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_CLOSE_BRACE_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_BACK_SLASH_OR_PIPELINE_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_BACK_SLASH_OR_PIPELINE_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_BACK_SLASH_OR_PIPELINE_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_BACK_SLASH_OR_PIPELINE_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_SEMICOLON_OR_DOUBLE_POINT_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_SEMICOLON_OR_DOUBLE_POINT_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_SEMICOLON_OR_DOUBLE_POINT_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_SEMICOLON_OR_DOUBLE_POINT_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_COMMA_OR_SMALLER_THAN_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_COMMA_OR_SMALLER_THAN_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_COMMA_OR_SMALLER_THAN_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_COMMA_OR_SMALLER_THAN_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_SLASH_OR_QUESTION_MARK_ALONE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_SLASH_OR_QUESTION_MARK_SHIFT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_SLASH_OR_QUESTION_MARK_CTRL_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure VK_SLASH_OR_QUESTION_MARK_ALT_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
Enddefine

*====================================================================
* Logic Helper Class
*====================================================================
Define Class Logic As Custom
	TRUE	= .T.
	FALSE	= .F.
	Procedure TRUE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
	Procedure FALSE_ASSIGN(vNewVal)
		Return .Null.

*====================================================================
Enddefine

*====================================================================
* Msg Helper Class
*====================================================================
Define Class Msg As Custom

*-- Buttons
	OK_BUTTON					= 0
	OK_CANCEL_BUTTONS			= 1
	ABORT_RETRY_IGNORE_BUTTONS	= 2
	YES_NO_CANCEL_BUTTONS		= 3
	YES_NO_BUTTONS				= 4
	RETRY_CANCEL_BUTTONS		= 5

*-- Icons
	INFORMATION_ICON			= 64
	WARNING_ICON				= 48
	ERROR_ICON					= 16
	QUESTION_MARK				= 32

*-- Response
	Result						= 0
	OK							= 1
	Cancel						= 2
	ABORT						= 3
	Retry						= 4
	Ignore						= 5
	YES							= 6
	NO							= 7

	Procedure OK_BUTTON_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure OK_CANCEL_BUTTONS_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure ABORT_RETRY_IGNORE_BUTTONS_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure YES_NO_CANCEL_BUTTONS_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure YES_NO_BUTTONS_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure RETRY_CANCEL_BUTTONS_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure INFORMATION_ICON_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure WARNING_ICON_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure ERROR_ICON_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure QUESTION_MARK_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure OK_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure CANCEL_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure ABORT_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure RETRY_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure IGNORE_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure YES_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure NO_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
Enddefine

*====================================================================
* Http Helper Class
*====================================================================
Define Class Http As Custom
*-- Respuestas Afirmativas 	1xx
	Continue						= 100
	SWITCHING_PROTOCOLS				= 101
	PROCESSING						= 102
	CHECKPOINT						= 103

*-- Peticiones Correctas	2xx
	OK								= 200
	CREATED							= 201
	ACCEPTED						= 202
	NON_AUTHORITATIVE_INFORMATION	= 203
	NO_CONTENT						= 204
	RESET_CONTENT					= 205
	PARTIAL_CONTENT					= 206
	MULTI_STATUS					= 207
	ALREADY_REPORTED				= 208

*-- Redirecciones 3xx
	MULTIPLE_CHOICE					= 300
	MOVED_PERMANENTLY				= 301
	Found							= 302
	SEE_OTHER						= 303
	NOT_MODIFIED					= 304
	USE_PROXY						= 305
	SWITCH_PROXY					= 306
	TEMPORARY_REDIRECT				= 307
	PERMANENT_REDIRECT				= 308

*-- Errores del Cliente 4xx
	BAD_REQUEST						= 400
	UNAUTHORIZED					= 401
	PAYMENT_REQUIRED				= 402
	FORBIDDEN						= 403
	NOT_FOUND						= 404
	METHOD_NOT_ALLOWED				= 405
	NOT_ACCEPTABLE					= 406
	PROXY_AUTHENTICATION_REQUIRED	= 407
	REQUEST_TIMEOUT					= 408
	Conflict						= 409
	GONE							= 410
	LENGTH_REQUIRED					= 411
	PRECONDITION_FAILED				= 412
	REQUEST_ENTITY_TOO_LARGE		= 413
	REQUEST_URI_TOO_LONG			= 414
	UNSUPPORTED_MEDIA_TYPE			= 415
	REQUESTED_RANGE_NOT_ATISFIABLE	= 416
	EXPECTATION_FAILED				= 417
	IM_A_TEAPOT						= 418
	UNPROCESSABLE_ENTITY			= 422
	LOCKED							= 423
	FAILED_DEPENDENCY				= 424
	UNASSIGNED						= 425
	UPGRADE_REQUIRED				= 426
	PRECONDITION_REQUIRED			= 428
	TOO_MANY_REQUESTS				= 429
	REQUEST_HEADER_FIELDS_TOO_LARGE	= 431
	MICROSOFT_EXTENTION				= 449
	UNAVAILABLE_FOR_LEGAL_REASONS	= 451

*-- Errores del servidor 5xx
	INTERNAL_SERVER_ERROR			= 500
	NOT_IMPLEMENTED					= 501
	BAD_GATEWAY						= 502
	SERVICE_UNAVAILABLE				= 503
	GATEWAY_TIMEOUT					= 504
	HTTP_VERSION_NOT_SUPPORTED		= 505
	VARIANT_ALSO_NEGOTIATES			= 506
	INSUFFICIENT_STORAGE			= 507
	LOOP_DETECTED					= 508
	BANDWIDTH_LIMIT_EXCEEDED		= 509
	NOT_EXTENDED					= 510
	NETWORK_AUTHENTICATION_REQUIRED	= 511
	NOT_UPDATED						= 512
	VERSION_MISMATCH				= 521

*-- Respuestas Afirmativas 	1xx
	Procedure CONTINUE_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure SWITCHING_PROTOCOLS_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure PROCESSING_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure CHECKPOINT_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
*-- Peticiones Correctas	2xx
	Procedure OK_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure CREATED_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure ACCEPTED_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure NON_AUTHORITATIVE_INFORMATION_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure NO_CONTENT_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure RESET_CONTENT_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure PARTIAL_CONTENT_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure MULTI_STATUS_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure ALREADY_REPORTED_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
*-- Redirecciones 3xx
	Procedure MULTIPLE_CHOICE_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure MOVED_PERMANENTLY_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure FOUND_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure SEE_OTHER_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure NOT_MODIFIED_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure USE_PROXY_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure SWITCH_PROXY_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure TEMPORARY_REDIRECT_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure PERMANENT_REDIRECT_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure BAD_REQUEST_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure UNAUTHORIZED_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure PAYMENT_REQUIRED_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure FORBIDDEN_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure NOT_FOUND_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure METHOD_NOT_ALLOWED_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure NOT_ACCEPTABLE_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure PROXY_AUTHENTICATION_REQUIRED_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure REQUEST_TIMEOUT_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure CONFLICT_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure GONE_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure LENGTH_REQUIRED_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure PRECONDITION_FAILED_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure REQUEST_ENTITY_TOO_LARGE_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure REQUEST_URI_TOO_LONG_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure UNSUPPORTED_MEDIA_TYPE_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure REQUESTED_RANGE_NOT_ATISFIABLE_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure EXPECTATION_FAILED_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure IM_A_TEAPOT_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure UNPROCESSABLE_ENTITY_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure LOCKED_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure FAILED_DEPENDENCY_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure UNASSIGNED_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure UPGRADE_REQUIRED_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure PRECONDITION_REQUIRED_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure TOO_MANY_REQUESTS_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure REQUEST_HEADER_FIELDS_TOO_LARGE_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure MICROSOFT_EXTENTION_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure UNAVAILABLE_FOR_LEGAL_REASONS_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure INTERNAL_SERVER_ERROR_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure NOT_IMPLEMENTED_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure BAD_GATEWAY_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure SERVICE_UNAVAILABLE_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure GATEWAY_TIMEOUT_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure HTTP_VERSION_NOT_SUPPORTED_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure VARIANT_ALSO_NEGOTIATES_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure INSUFFICIENT_STORAGE_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure LOOP_DETECTED_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure BANDWIDTH_LIMIT_EXCEEDED_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure NOT_EXTENDED_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure NETWORK_AUTHENTICATION_REQUIRED_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure NOT_UPDATED_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
	Procedure VERSION_MISMATCH_ASSIGN(vNewVal)
		Return .Null.

*=====================================================================
Enddefine

*====================================================================
* Utils Helper Class
*====================================================================
Define Class Utils As Custom
	CRLF 					= Chr(13)+Chr(10)
	CR 						= Chr(13)
	AMPERSAND				= Chr(38)

*-- Properties Protection
	Procedure CRLF_ASSIGN
		Lparameters vNewVal
		Return .Null.
	Endfunc
	Procedure CR_ASSIGN
		Lparameters vNewVal
		Return .Null.
	Endfunc
	Procedure AMPERSAND_ASSIGN
		Lparameters vNewVal
		Return .Null.
	Endfunc
Enddefine

*====================================================================
* Types Helper Class
*====================================================================
Define Class Types As Custom
	Blob		= "W"
	Char 		= "C"
	Character	= "C"
	Currency	= "Y"
	Date 		= "D"
	Datetime 	= "T"
	Double 		= "B"
	General 	= "G"
	Int 		= "I"
	Integer 	= "I"
	INT16 		= "I"
	INT32		= "I"
	LOGICAL		= "L"
	BOOL 		= "L"
	BOOLEAN		= "L"
	Memo		= "M"
	TEXT		= "M"
	LONGTEXT	= "M"
	NUM 		= "N"
	NUMERIC		= "N"
	NUMBER		= "N"
	DECIMAL		= "N"
	DOUBLE 		= "N"
	FLOAT		= "F"
	VARBINARY	= "Q"
	VARCHAR		= "V"
	UNKNOW		= "U"
	NULL		= "X"
	OBJECT 		= "O"

	Procedure BLOB_ASSIGN(vNewVal)
		Return .NULL.

	*=====================================================================
	Procedure CHAR_ASSIGN(vNewVal)
		Return .NULL.

	*=====================================================================
	Procedure CHARACTER_ASSIGN(vNewVal)
		Return .NULL.

	*=====================================================================
	Procedure CURRENCY_ASSIGN(vNewVal)
		Return .NULL.

	*=====================================================================
	Procedure DATE_ASSIGN(vNewVal)
		Return .NULL.

	*=====================================================================
	Procedure DATETIME_ASSIGN(vNewVal)
		Return .NULL.

	*=====================================================================
	Procedure DOUBLE_ASSIGN(vNewVal)
		Return .NULL.

	*=====================================================================
	Procedure GENERAL_ASSIGN(vNewVal)
		Return .NULL.

	*=====================================================================
	Procedure INT_ASSIGN(vNewVal)
		Return .NULL.

	*=====================================================================
	Procedure INTEGER_ASSIGN(vNewVal)
		Return .NULL.

	*=====================================================================
	Procedure INT16_ASSIGN(vNewVal)
		Return .NULL.

	*=====================================================================
	Procedure INT32_ASSIGN(vNewVal)
		Return .NULL.

	*=====================================================================
	Procedure LOGICAL_ASSIGN(vNewVal)
		Return .NULL.

	*=====================================================================
	Procedure BOOL_ASSIGN(vNewVal)
		Return .NULL.

	*=====================================================================
	Procedure BOOLEAN_ASSIGN(vNewVal)
		Return .NULL.

	*=====================================================================
	Procedure MEMO_ASSIGN(vNewVal)
		Return .NULL.

	*=====================================================================
	Procedure TEXT_ASSIGN(vNewVal)
		Return .NULL.

	*=====================================================================
	Procedure LONGTEXT_ASSIGN(vNewVal)
		Return .NULL.

	*=====================================================================
	Procedure NUM_ASSIGN(vNewVal)
		Return .NULL.

	*=====================================================================
	Procedure NUMERIC_ASSIGN(vNewVal)
		Return .NULL.

	*=====================================================================
	Procedure NUMBER_ASSIGN(vNewVal)
		Return .NULL.

	*=====================================================================
	Procedure DECIMAL_ASSIGN(vNewVal)
		Return .NULL.

	*=====================================================================
	Procedure DOUBLE_ASSIGN(vNewVal)
		Return .NULL.

	*=====================================================================
	Procedure FLOAT_ASSIGN(vNewVal)
		Return .NULL.

	*=====================================================================
	Procedure VARBINARY_ASSIGN(vNewVal)
		Return .NULL.

	*=====================================================================
	Procedure VARCHAR_ASSIGN(vNewVal)
		Return .NULL.

	*=====================================================================
	Procedure UNKNOW_ASSIGN(vNewVal)
		Return .NULL.

	*=====================================================================
	Procedure NULL_ASSIGN(vNewVal)
		Return .NULL.

	*=====================================================================
	Procedure OBJECT_ASSIGN(vNewVal)
		Return .NULL.

	*=====================================================================
Enddefine
