/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0D3E64D0
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_start"
if(room == rm_start)
{
	/// @DnDAction : YoYo Games.Game.End_Game
	/// @DnDVersion : 1
	/// @DnDHash : 724F1854
	/// @DnDParent : 0D3E64D0
	game_end();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3FFD5459
else
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 10EE29DA
	/// @DnDParent : 3FFD5459
	/// @DnDArgument : "room" "rm_start"
	/// @DnDSaveInfo : "room" "rm_start"
	room_goto(rm_start);
}