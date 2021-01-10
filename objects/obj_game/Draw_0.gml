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
		/// @DnDArgument : "y" "20"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""Score: ""
		draw_text_transformed(20, 20, string("Score: ") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 28B4CDDE
		/// @DnDParent : 791913A4
		/// @DnDArgument : "x" "190"
		/// @DnDArgument : "y" "60"
		/// @DnDArgument : "caption" ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(190, 60, string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 3882D008
		/// @DnDParent : 791913A4
		/// @DnDArgument : "x" "190"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "sprite" "spr_lifes"
		/// @DnDSaveInfo : "sprite" "spr_lifes"
		var l3882D008_0 = sprite_get_width(spr_lifes);
		var l3882D008_1 = 0;
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		for(var l3882D008_2 = __dnd_lives; l3882D008_2 > 0; --l3882D008_2) {
			draw_sprite(spr_lifes, 0, 190 + l3882D008_1, 100);
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
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 01F753B2
		/// @DnDParent : 50D483FD
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 1514EBB8
		/// @DnDParent : 50D483FD
		/// @DnDArgument : "color" "$FF00FFFF"
		draw_set_colour($FF00FFFF & $ffffff);
		var l1514EBB8_0=($FF00FFFF >> 24);
		draw_set_alpha(l1514EBB8_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 16A4E125
		/// @DnDParent : 50D483FD
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU LOSE""
		draw_text_transformed(250, 100, string("YOU LOSE") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 46A044CB
		/// @DnDParent : 50D483FD
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "200"
		/// @DnDArgument : "caption" ""Press ENTER to Restart ""
		draw_text(250, 200, string("Press ENTER to Restart ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 28D4CD76
		/// @DnDParent : 50D483FD
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 7472425E
		/// @DnDParent : 50D483FD
		draw_set_colour($FFFFFFFF & $ffffff);
		var l7472425E_0=($FFFFFFFF >> 24);
		draw_set_alpha(l7472425E_0 / $ff);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2FD9ECEB
	/// @DnDParent : 37DA8696
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 3376D6A9
		/// @DnDParent : 2FD9ECEB
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 627D52D3
		/// @DnDParent : 2FD9ECEB
		/// @DnDArgument : "color" "$FF00FFFF"
		draw_set_colour($FF00FFFF & $ffffff);
		var l627D52D3_0=($FF00FFFF >> 24);
		draw_set_alpha(l627D52D3_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 790FA91A
		/// @DnDParent : 2FD9ECEB
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU WIN ""
		draw_text_transformed(250, 100, string("YOU WIN ") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 618C55D5
		/// @DnDParent : 2FD9ECEB
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "200"
		/// @DnDArgument : "caption" ""Press ENTER to Restart""
		draw_text(250, 200, string("Press ENTER to Restart") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 7D69D8D3
		/// @DnDParent : 2FD9ECEB
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 211F11EF
		/// @DnDParent : 2FD9ECEB
		draw_set_colour($FFFFFFFF & $ffffff);
		var l211F11EF_0=($FFFFFFFF >> 24);
		draw_set_alpha(l211F11EF_0 / $ff);
		break;
}