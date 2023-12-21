/// @description Insert description here
// You can write your code in this editor

draw_set_color(global.dark)
draw_set_alpha(min(image_alpha,0.65))
draw_rectangle(__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0,__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+360,false)
draw_set_alpha(1);
draw_set_color(c_white);

draw_self();


if (image_alpha >=1)
{
	draw_set_font(global.customFont20);
	draw_set_halign(fa_center);

	
	draw_set_color(global.lightBlue);
	draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+111,"LEVEL: " + string(global.level));
	draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+136,"SCORE: " + string(global.XPpoints));
	draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+161,"HI-SCORE: " + string(global.HighScore));
	
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+110,"LEVEL: " + string(global.level));
	draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+135,"SCORE: " + string(global.XPpoints));
	draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+160,"HI-SCORE: " + string(global.HighScore));

	
	
	draw_set_font(global.customFont12);
	infoGameOver(info);
		
	draw_set_color(global.lightBlue)
	draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+291, string(text))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+290, string(text))
	
	infoGameOver(info2);
		
	draw_set_color(global.lightBlue)
	draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+311, string(text))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+310, string(text))
	
	
	draw_set_halign(fa_right);
	draw_set_font(global.customFont14);
	draw_set_color(global.lightBlue);
	draw_text(__view_get( e__VW.XView, 0 )+634,__view_get( e__VW.YView, 0 )+331,"X to Main Menu");
	draw_set_color(c_white);
	draw_text(__view_get( e__VW.XView, 0 )+635,__view_get( e__VW.YView, 0 )+330,"X to Main Menu");;
}




