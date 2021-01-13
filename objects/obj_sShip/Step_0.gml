/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 45B6AA9F
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_start"
if(room == rm_start)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 54DEB8D5
	/// @DnDParent : 45B6AA9F
	/// @DnDArgument : "speed" "2"
	speed = 2;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 32FF5F25
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_gameover"
if(room == rm_gameover)
{
	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 303E53DB
	/// @DnDParent : 32FF5F25
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "type" "5"
	/// @DnDArgument : "where" "1"
	/// @DnDArgument : "size" "2"
	/// @DnDArgument : "color" "$FF676767"
	effect_create_above(5, x + 0, y + 0, 2, $FF676767 & $ffffff);

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 33B11DAD
	/// @DnDParent : 32FF5F25
	/// @DnDArgument : "angle" "-5"
	/// @DnDArgument : "angle_relative" "1"
	image_angle += -5;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 0CB3D92A
	/// @DnDParent : 32FF5F25
	/// @DnDArgument : "xscale" "-0.05"
	/// @DnDArgument : "xscale_relative" "1"
	/// @DnDArgument : "yscale" "-0.05"
	/// @DnDArgument : "yscale_relative" "1"
	image_xscale += -0.05;
	image_yscale += -0.05;

	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 5EE8AAA1
	/// @DnDParent : 32FF5F25
	/// @DnDArgument : "alpha" "-0.005"
	/// @DnDArgument : "alpha_relative" "1"
	image_alpha += -0.005;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3476D989
	/// @DnDParent : 32FF5F25
	/// @DnDArgument : "var" "image_alpha"
	/// @DnDArgument : "op" "3"
	if(image_alpha <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 30CBE875
		/// @DnDParent : 3476D989
		instance_destroy();
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 11955961
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_win"
if(room == rm_win)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 25538CD7
	/// @DnDParent : 11955961
	/// @DnDArgument : "speed" "-2"
	speed = -2;
}