/// @description Insert description here


draw_sprite_stretched(s_textbox, background, __view_get( e__VW.XView, 0 )+270+xoffset, __view_get( e__VW.YView, 0 )+380+yoffset, w, h)



//draw_set_font(global.fontTextItch)
draw_set_halign(fa_center)
draw_set_valign(fa_top)
draw_set_color(c_black)

var _print = string_copy(_message,1,textProgress)

if responses[0] != -1 && (textProgress >= string_length(_message))
{
	 for ( var i = 0; i < array_length_1d(responses); i++)
	 {
		_print += "\n";

		if ( i == responseSelected) _print += "> ";
		_print +=responses[i];
		if (i == responseSelected) _print += " <";
	 }
}



draw_text((__view_get( e__VW.XView, 0 )+270)+w/2+xoffset+1, __view_get( e__VW.YView, 0 )+380+10+yoffset, _print)
draw_set_color(c_white)
draw_text((__view_get( e__VW.XView, 0 )+270)+w/2+xoffset, __view_get( e__VW.YView, 0 )+380+9+yoffset, _print)
draw_set_color(c_white)

//if (o_main._room == MAINROOM.CLUB)
//{
//	//draw_sprite_stretched(s_textboxDark, 0, x+xoffset, y+yoffset, w, h)
//	draw_sprite(s_pico,1,x+xoffset+w/2, y+yoffset+h)
//}
//else
//{
//	draw_sprite(s_pico,0,x+xoffset+w/2, y+yoffset+h)
//}
