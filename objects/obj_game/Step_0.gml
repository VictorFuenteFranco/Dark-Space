/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 51DEDB95
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Instance Variables.If_Score
	/// @DnDVersion : 1
	/// @DnDHash : 6068B21B
	/// @DnDParent : 51DEDB95
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1000"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	if(__dnd_score >= 1000)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 03F78105
		/// @DnDParent : 6068B21B
		/// @DnDArgument : "room" "rm_win"
		/// @DnDSaveInfo : "room" "rm_win"
		room_goto(rm_win);
	
		/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 505920E4
		/// @DnDParent : 6068B21B
		/// @DnDArgument : "soundid" "space1"
		/// @DnDSaveInfo : "soundid" "space1"
		audio_stop_sound(space1);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 1A4D2A44
		/// @DnDParent : 6068B21B
		/// @DnDArgument : "soundid" "win_00"
		/// @DnDSaveInfo : "soundid" "win_00"
		audio_play_sound(win_00, 0, 0);
	}

	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 6363CB50
	/// @DnDParent : 51DEDB95
	/// @DnDArgument : "op" "3"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	if(__dnd_lives <= 0)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 4761C77C
		/// @DnDParent : 6363CB50
		/// @DnDArgument : "room" "rm_gameover"
		/// @DnDSaveInfo : "room" "rm_gameover"
		room_goto(rm_gameover);
	
		/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 7A9A38CD
		/// @DnDParent : 6363CB50
		/// @DnDArgument : "soundid" "space1"
		/// @DnDSaveInfo : "soundid" "space1"
		audio_stop_sound(space1);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 26C5567A
		/// @DnDParent : 6363CB50
		/// @DnDArgument : "soundid" "lose_00"
		/// @DnDSaveInfo : "soundid" "lose_00"
		audio_play_sound(lose_00, 0, 0);
	}
}