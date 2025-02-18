/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
Controls_Input();
if (contSplash <120)
{
	if(key_x)
	{
		contSplash = 0;
		room_goto(Sala_Inicio)
	}
}

if contSplash > 120
	{
		if alphasplash < 1
		{
			alphasplash +=0.025;
		}
	}
	else
	{
		alphasplash -=0.015;
		
		if alphasplash <=0
		{
			contSplash = 0;
			room_goto(Sala_Inicio)
		}
	}
	contSplash --;
	draw_set_color(c_black);

	//draw_rectangle(__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0,__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+360,false);
	draw_sprite_ext(gmmm0, 0,__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+180,1,1,0,c_white,alphasplash)