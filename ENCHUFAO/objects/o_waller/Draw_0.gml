/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_right)
draw_set_font(global.customFont11)
draw_text(__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+80, "0 " + string(alarm[0]))
draw_text(__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+100, "1 " + string(alarm[1]))
draw_text(__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+120, "2 " + string(alarm[2]))
draw_text(__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+140, "3 " + string(alarm[3]))
draw_text(__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+160, "4 " + string(alarm[4]))
draw_text(__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+180, "5 " + string(alarm[5]))
draw_text(__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+200, "6 " + string(alarm[6]))
draw_text(__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+220, "7 " + string(alarm[7]))
//draw_text(__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+90, "Adapter " + string(placeAdapter))
//draw_text(__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+100, string(realSteps))
//draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+100, "TIMES: " + string(times))
//draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+120, "TIMESTOTAL: " + string(timesTotal))
//draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+140, "BREACH: " + string(spawningBreach))


//if instance_exists(o_playerShip) && (room = Sala_Tutorial)
//{
//	draw_text(o_playerShip.x,o_playerShip.y+40, "enchufeFireRate " + string(enchufeFireRate))
//}	
