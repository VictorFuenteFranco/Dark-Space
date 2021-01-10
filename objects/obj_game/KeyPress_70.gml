/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 78F90651
/// @DnDArgument : "expr" "window_get_fullscreen()"
/// @DnDArgument : "not" "1"
if(!(window_get_fullscreen()))
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 6B0AA491
	/// @DnDParent : 78F90651
	/// @DnDArgument : "function" "window_set_fullscreen"
	/// @DnDArgument : "arg" "true"
	window_set_fullscreen(true);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4F4B8A28
else
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 604A3169
	/// @DnDParent : 4F4B8A28
	/// @DnDArgument : "function" "window_set_fullscreen"
	/// @DnDArgument : "arg" "false"
	window_set_fullscreen(false);
}