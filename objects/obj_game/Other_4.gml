/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1EAEC90C
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_start"
if(room == rm_start)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 3FE31849
	/// @DnDParent : 1EAEC90C
	/// @DnDArgument : "soundid" "space1"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "space1"
	audio_play_sound(space1, 0, 1);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 781A3869
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 54E2C38B
	/// @DnDParent : 781A3869
	/// @DnDArgument : "steps" "60"
	alarm_set(0, 60);

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 46AE9C10
	/// @DnDParent : 781A3869
	/// @DnDArgument : "times" "20"
	repeat(20)
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 28B7D048
		/// @DnDInput : 2
		/// @DnDParent : 46AE9C10
		/// @DnDArgument : "var" "eleccion"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var eleccion = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 416108C3
		/// @DnDParent : 46AE9C10
		/// @DnDArgument : "var" "eleccion"
		if(eleccion == 0)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 23E33AAE
			/// @DnDParent : 416108C3
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_width*0.3"
			xx = floor(random_range(0, room_width*0.3 + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 6CFD2417
		/// @DnDParent : 46AE9C10
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 65A2F7B6
			/// @DnDParent : 6CFD2417
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "room_width*0.7"
			/// @DnDArgument : "max" "room_width"
			xx = floor(random_range(room_width*0.7, room_width + 1));
		}
	
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 4832D01E
		/// @DnDInput : 2
		/// @DnDParent : 46AE9C10
		/// @DnDArgument : "var" "eleccion"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var eleccion = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 28B3AEC8
		/// @DnDParent : 46AE9C10
		/// @DnDArgument : "var" "eleccion"
		if(eleccion == 0)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 54DE8F38
			/// @DnDParent : 28B3AEC8
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_height*0.3"
			yy = floor(random_range(0, room_height*0.3 + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 01E64C0D
		/// @DnDParent : 46AE9C10
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 387640FC
			/// @DnDParent : 01E64C0D
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "room_height*0.7"
			/// @DnDArgument : "max" "room_height"
			yy = floor(random_range(room_height*0.7, room_height + 1));
		}
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 36515F71
		/// @DnDParent : 46AE9C10
		/// @DnDArgument : "xpos" "xx"
		/// @DnDArgument : "ypos" "yy"
		/// @DnDArgument : "objectid" "obj_asteroid"
		/// @DnDSaveInfo : "objectid" "obj_asteroid"
		instance_create_layer(xx, yy, "Instances", obj_asteroid);
	}
}