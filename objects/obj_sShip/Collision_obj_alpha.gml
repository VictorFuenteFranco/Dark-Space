/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 2FF2AF14
/// @DnDArgument : "xscale" "-0.005"
/// @DnDArgument : "xscale_relative" "1"
/// @DnDArgument : "yscale" "-0.005"
/// @DnDArgument : "yscale_relative" "1"
image_xscale += -0.005;
image_yscale += -0.005;

/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
/// @DnDVersion : 1
/// @DnDHash : 03443790
/// @DnDArgument : "alpha" "-0.005"
/// @DnDArgument : "alpha_relative" "1"
image_alpha += -0.005;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 69CD0EC6
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "op" "1"
if(image_alpha < 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5701116A
	/// @DnDApplyTo : {obj_sShip}
	/// @DnDParent : 69CD0EC6
	with(obj_sShip) instance_destroy();
}