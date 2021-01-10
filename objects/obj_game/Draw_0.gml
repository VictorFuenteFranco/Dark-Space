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
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 6DBB22CF
		/// @DnDParent : 791913A4
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "20"
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(20, 20, string("Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 3882D008
		/// @DnDParent : 791913A4
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "80"
		/// @DnDArgument : "sprite" "spr_spaceship"
		/// @DnDSaveInfo : "sprite" "spr_spaceship"
		var l3882D008_0 = sprite_get_width(spr_spaceship);
		var l3882D008_1 = 0;
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		for(var l3882D008_2 = __dnd_lives; l3882D008_2 > 0; --l3882D008_2) {
			draw_sprite(spr_spaceship, 0, 20 + l3882D008_1, 80);
			l3882D008_1 += l3882D008_0;
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 768AA0DE
	/// @DnDParent : 37DA8696
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 064553C7
		/// @DnDParent : 768AA0DE
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 748B02D0
		/// @DnDParent : 768AA0DE
		/// @DnDArgument : "color" "$FF00FFFF"
		draw_set_colour($FF00FFFF & $ffffff);
		var l748B02D0_0=($FF00FFFF >> 24);
		draw_set_alpha(l748B02D0_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 74B1894A
		/// @DnDParent : 768AA0DE
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""Dark Space ""
		draw_text_transformed(250, 100, string("Dark Space ") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 0ECCE6BC
		/// @DnDParent : 768AA0DE
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "200"
		/// @DnDArgument : "caption" ""Score 1000 to win""
		draw_text(250, 200, string("Score 1000 to win") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 793DDF8C
		/// @DnDParent : 768AA0DE
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "230"
		/// @DnDArgument : "caption" ""Move with Up/Left/Down""
		draw_text(250, 230, string("Move with Up/Left/Down") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 58BD84B8
		/// @DnDParent : 768AA0DE
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "260"
		/// @DnDArgument : "caption" ""Press SPACE to shoot ""
		draw_text(250, 260, string("Press SPACE to shoot ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 6094BE7D
		/// @DnDParent : 768AA0DE
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "350"
		/// @DnDArgument : "caption" ""Press ENTER to start ""
		draw_text(250, 350, string("Press ENTER to start ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 59C83FB9
		/// @DnDParent : 768AA0DE
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 59555E28
		/// @DnDParent : 768AA0DE
		draw_set_colour($FFFFFFFF & $ffffff);
		var l59555E28_0=($FFFFFFFF >> 24);
		draw_set_alpha(l59555E28_0 / $ff);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 50D483FD
	/// @DnDParent : 37DA8696
	/// @DnDArgument : "const" "rm_gameover"
	case rm_gameover:
	
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2FD9ECEB
	/// @DnDParent : 37DA8696
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
	
		break;
}