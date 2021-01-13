/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 49334F01
/// @DnDApplyTo : {obj_aster}
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "size" "2"
/// @DnDArgument : "color" "$FF0000FF"
with(obj_aster) effect_create_above(0, x + 0, y + 0, 2, $FF0000FF & $ffffff);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 76A6F413
instance_destroy();