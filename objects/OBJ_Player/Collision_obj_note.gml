/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2EB0AE5C
/// @DnDApplyTo : {OBJ_Player}
/// @DnDArgument : "expr" "20"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "walk_speed"
with(OBJ_Player) {
walk_speed += 20;

}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 77673196
/// @DnDApplyTo : other
with(other) instance_destroy();