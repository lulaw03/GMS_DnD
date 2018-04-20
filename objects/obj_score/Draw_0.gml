/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 0A1FC83A
/// @DnDInput : 4
/// @DnDArgument : "var" "vc "
/// @DnDArgument : "value" "view_camera[0]"
/// @DnDArgument : "var_1" "cx"
/// @DnDArgument : "value_1" "camera_get_view_x(vc)"
/// @DnDArgument : "var_2" "cy"
/// @DnDArgument : "value_2" "camera_get_view_y(vc)"
/// @DnDArgument : "var_3" "cw"
/// @DnDArgument : "value_3" "camera_get_view_width(vc)"
var vc  = view_camera[0];
var cx = camera_get_view_x(vc);
var cy = camera_get_view_y(vc);
var cw = camera_get_view_width(vc);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 4F1AEFD6
/// @DnDArgument : "font" "fnt_score"
/// @DnDSaveInfo : "font" "0b4334e8-7a02-4c42-aa86-8de0969e0df4"
draw_set_font(fnt_score);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 29965C6A
/// @DnDArgument : "halign" "fa_center"
draw_set_halign(fa_center);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 4A251D91
draw_set_colour($FFFFFFFF & $ffffff);
draw_set_alpha(($FFFFFFFF >> 24) / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 3848BBF3
/// @DnDArgument : "x" "cx+(cw/2)"
/// @DnDArgument : "y" "cy+32"
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "var" "thescore"
draw_text(cx+(cw/2), cy+32, string("Score: ") + string(thescore));