/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 3D50BEDC
/// @DnDArgument : "obj" "OBJ_Player"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "OBJ_Player"
var l3D50BEDC_0 = false;
l3D50BEDC_0 = instance_exists(OBJ_Player);
if(!l3D50BEDC_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 362818B4
	/// @DnDParent : 3D50BEDC
	exit;
}

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 015AC3FF
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 74D1BB99
/// @DnDArgument : "font" "font_opensans"
/// @DnDSaveInfo : "font" "font_opensans"
draw_set_font(font_opensans);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 24142DE2
/// @DnDArgument : "x" "30"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-15"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Coins: ""
/// @DnDArgument : "var" "OBJ_Player.coins"
draw_text(x + 30, y + -15, string("Coins: ") + string(OBJ_Player.coins));