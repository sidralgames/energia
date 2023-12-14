
if !tile_meeting(x,y,"Tiles")
{
	instance_destroy();
}


if instance_exists(o_playerShip)
{
	if (global.invisibleCloak == false)
	{
		var a = point_direction(x, y, o_playerShip.x, o_playerShip.y);
		direction += sign(dsin(a - direction)) * precision;
		image_angle = direction;
		dis = point_distance(x,y,o_playerShip.x,o_playerShip.y)
		if dis <=300
		{

			if alarm[0] <= 0
			{
			//audio_stop_sound(disparoTorreta);
			//audio_play_sound(disparoTorreta,51,false);
			//for (var i = 0 ; i<=10; i++){
			//part_particles_create(global.misil_sys, random_range(x+lengthdir_x(length,direction-10),x+lengthdir_x(length,direction+10)),random_range(y+lengthdir_y(length,direction-10),y+lengthdir_y(length,direction+10)), global.misil , 15)
			//}
				current_recoil=7;
				audio_play_sound_on(global.audioEmitter,snd_shoot1, false, 80,,,random_range(0.8,1))
				var bala = instance_create (x+lengthdir_x(length,direction),y+lengthdir_y(length,direction),o_bulletTorreta);
				bala.direction = direction;

				alarm[0]=random_range(160,280);

			}

		}
	}
	else
	{
		var a = point_direction(x, y, o_torreta.x, o_torreta.y);
		direction += sign(dsin(a - direction)) * precision;
		image_angle = direction;
	}

current_recoil = max(0,floor(current_recoil*0.8));

}
