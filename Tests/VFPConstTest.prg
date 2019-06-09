*====================================================================
* VFPConst Unit Test
*====================================================================
Define Class VFPConstTest As FxuTestCase Of FxuTestCase.prg
	#If .F.
		Local This As VFPConstTest Of VFPConstTest.prg
	#Endif

	Procedure Setup
		Public VFPConst
		VFPConst = NewObject("Const", "VFPConst.prg")
		
*====================================================================
	Procedure TearDown
		Release VFPConst
		
*====================================================================
	Procedure test_should_create_vfpconst_object
		This.AssertNotNull(VFPConst, "VFPConst was not created")
		
*====================================================================
	Procedure test_should_return_28_for_key_f1_alone_constant
		This.AssertTrue(VFPConst.KeyBoard.VK_F1_ALONE = 28, "something went wrong")

*====================================================================
	Procedure test_should_return_true_for_logic_true_constant
		This.AssertTrue(VFPConst.Logic.True, "something went wrong")

*====================================================================
	Procedure test_should_return_200_for_ok_in_http_status_code_constant
		This.AssertTrue(VFPConst.Http.Ok = 200, "something went wrong")

*====================================================================
	Procedure test_should_return_64_for_information_icon_in_messagebox_constant
		This.AssertTrue(VFPConst.Msg.Information_icon = 64, "something went wrong")

*====================================================================
	Procedure test_should_return_v_type_for_varchar_in_types_constant
		This.AssertTrue(VFPConst.Types.Varchar = "V", "something went wrong")

Enddefine