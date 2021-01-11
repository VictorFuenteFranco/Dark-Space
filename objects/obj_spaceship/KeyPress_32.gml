/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 2D7370C6
/// @DnDArgument : "soundid" "laser_shoot_02"
/// @DnDSaveInfo : "soundid" "laser_shoot_02"
audio_play_sound(laser_shoot_02, 0, 0);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2D2830B4
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "newBala"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_bala"
/// @DnDSaveInfo : "objectid" "obj_bala"
var newBala = instance_create_layer(x + 0, y + 0, "Instances", obj_bala);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 78D2744D
/// @DnDArgument : "expr" "image_angle"
/// @DnDArgument : "var" "newBala.direction"
newBala.direction = image_angle;