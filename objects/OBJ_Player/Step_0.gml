/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1A018E0D
/// @DnDComment : 1 would be pressing right$(13_10)-1 would be pressing left$(13_10)0 would be no input
/// @DnDArgument : "expr" "keyboard_check(vk_right) - keyboard_check(vk_left)"
/// @DnDArgument : "var" "move_x"
move_x = keyboard_check(vk_right) - keyboard_check(vk_left);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5650C96D
/// @DnDArgument : "expr" "move_x*walk_speed"
/// @DnDArgument : "var" "move_x"
move_x = move_x*walk_speed;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 2C9C8AF8
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_grass"
/// @DnDSaveInfo : "object" "obj_grass"
var l2C9C8AF8_0 = instance_place(x + 0, y + 2, [obj_grass]);
if ((l2C9C8AF8_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 390166BD
	/// @DnDComment : reset the falling speed on $(13_10)movement Y when you land$(13_10)on the ground
	/// @DnDParent : 2C9C8AF8
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 40C8E432
	/// @DnDParent : 2C9C8AF8
	var l40C8E432_0;
	l40C8E432_0 = keyboard_check_pressed(vk_space);
	if (l40C8E432_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 19C03AEE
		/// @DnDComment : Jump
		/// @DnDParent : 40C8E432
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2E35CF07
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4DDCA044
	/// @DnDParent : 2E35CF07
	/// @DnDArgument : "var" "move_y "
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y  < 10)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 213BABBB
		/// @DnDComment : add gravity
		/// @DnDParent : 4DDCA044
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;
	}
}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 027988B6
/// @DnDApplyTo : {OBJ_Player}
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "obj_grass"
/// @DnDSaveInfo : "object" "obj_grass"
move_and_collide(move_x, move_y, obj_grass,4,0,0,walk_speed,jump_speed);