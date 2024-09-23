/// @description Insert description here
// You can write your code in this editor






// Inherit the parent event
event_inherited();
if instance_exists(o_playerShip)
{
	if (o_playerShip.plugged) && (enchufeActive) && (charge < 200) && (!enchufeBomb)
		&& (o_playerShip.pluggedTimer < o_playerShip.pluggedTimerAlert) && ((room = Sala_0) || (room = Sala_Tutorial))
	{
		//draw_sprite_ext(s_activating, 0, x,y-40, 1,1, 0, image_blend, image_alpha)	
	}
	
}

//draw_text(x, y-30, string(occupied))
