/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 37DA8696
/// @DnDArgument : "expr" "room"
var l37DA8696_0 = room;
switch(l37DA8696_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 791913A4
	/// @DnDParent : 37DA8696
	/// @DnDArgument : "const" "rm_game"
	case rm_game:
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 14132C8B
		/// @DnDParent : 791913A4
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "10"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""Score: ""
		draw_text_transformed(20, 10, string("Score: ") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 59AD69FE
		/// @DnDParent : 791913A4
		/// @DnDArgument : "x" "190"
		/// @DnDArgument : "y" "35"
		/// @DnDArgument : "caption" ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(190, 35, string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 3882D008
		/// @DnDParent : 791913A4
		/// @DnDArgument : "x" "1700"
		/// @DnDArgument : "y" "20"
		/// @DnDArgument : "sprite" "spr_lifes"
		/// @DnDSaveInfo : "sprite" "spr_lifes"
		var l3882D008_0 = sprite_get_width(spr_lifes);
		var l3882D008_1 = 0;
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		for(var l3882D008_2 = __dnd_lives; l3882D008_2 > 0; --l3882D008_2) {
			draw_sprite(spr_lifes, 0, 1700 + l3882D008_1, 20);
			l3882D008_1 += l3882D008_0;
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 768AA0DE
	/// @DnDParent : 37DA8696
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 25484835
		/// @DnDParent : 768AA0DE
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "30"
		/// @DnDArgument : "sprite" "spr_titulo"
		/// @DnDSaveInfo : "sprite" "spr_titulo"
		draw_sprite_ext(spr_titulo, 0, 20, 30, 1, 1, 0, $FFFFFF & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 20E14772
		/// @DnDParent : 768AA0DE
		/// @DnDArgument : "x" "650"
		/// @DnDArgument : "y" "900"
		/// @DnDArgument : "sprite" "spr_start"
		/// @DnDSaveInfo : "sprite" "spr_start"
		draw_sprite_ext(spr_start, 0, 650, 900, 1, 1, 0, $FFFFFF & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 7A7860DF
		/// @DnDParent : 768AA0DE
		/// @DnDArgument : "x" "1700"
		/// @DnDArgument : "y" "1000"
		/// @DnDArgument : "sprite" "spr_fullscreen"
		/// @DnDSaveInfo : "sprite" "spr_fullscreen"
		draw_sprite_ext(spr_fullscreen, 0, 1700, 1000, 1, 1, 0, $FFFFFF & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 22B22F5C
		/// @DnDParent : 768AA0DE
		/// @DnDArgument : "x" "700"
		/// @DnDArgument : "y" "975"
		/// @DnDArgument : "sprite" "spr_quit"
		/// @DnDSaveInfo : "sprite" "spr_quit"
		draw_sprite_ext(spr_quit, 0, 700, 975, 1, 1, 0, $FFFFFF & $ffffff, 1);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 50D483FD
	/// @DnDParent : 37DA8696
	/// @DnDArgument : "const" "rm_gameover"
	case rm_gameover:
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 07939B61
		/// @DnDParent : 50D483FD
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "10"
		/// @DnDArgument : "sprite" "spr_lose"
		/// @DnDSaveInfo : "sprite" "spr_lose"
		draw_sprite_ext(spr_lose, 0, 20, 10, 1, 1, 0, $FFFFFF & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 4532F65C
		/// @DnDParent : 50D483FD
		/// @DnDArgument : "x" "1350"
		/// @DnDArgument : "y" "1000"
		/// @DnDArgument : "sprite" "spr_start"
		/// @DnDSaveInfo : "sprite" "spr_start"
		draw_sprite_ext(spr_start, 0, 1350, 1000, 1, 1, 0, $FFFFFF & $ffffff, 1);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2FD9ECEB
	/// @DnDParent : 37DA8696
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 10A9512B
		/// @DnDParent : 2FD9ECEB
		/// @DnDArgument : "x" "650"
		/// @DnDArgument : "y" "150"
		/// @DnDArgument : "sprite" "spr_win"
		/// @DnDSaveInfo : "sprite" "spr_win"
		draw_sprite_ext(spr_win, 0, 650, 150, 1, 1, 0, $FFFFFF & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 6A7E6B91
		/// @DnDParent : 2FD9ECEB
		/// @DnDArgument : "x" "650"
		/// @DnDArgument : "y" "900"
		/// @DnDArgument : "sprite" "spr_start"
		/// @DnDSaveInfo : "sprite" "spr_start"
		draw_sprite_ext(spr_start, 0, 650, 900, 1, 1, 0, $FFFFFF & $ffffff, 1);
		break;
}