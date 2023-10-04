// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerInvisibleCloak()
{
	if (global.invisibleCloak)
	{
		if ( (key_shoot) || (key_bomb) || (key_laser) // Shoot anythig
		|| ((key_l3Dowm) && (key_r3Dowm)) // Launch PETA
		|| (global.energy <= global.energyLow) // Running out of energy
		|| (plugged) // enchufado
		|| (tocado) ) // hit
		{
			global.invisibleCloak = false;;	
		}
				
		fx_Player = lerp(fx_Player,1,0.03); 
		colorPlayer_fx_params.g_Intensity = fx_Player;	
		fx_set_parameters(colorPlayer_fx, colorPlayer_fx_params);
	
		global.cloackReal = 3;
		_alpha = lerp(_alpha, 0.4, 0.03);
	
		if (abs(_hpush) > 0.1 || abs(_vpush) > 0.1) && (dirH != 0 || dirV !=0)
		{
			part_particles_create(global.naveP_cloak_sys, x,y, global.naveP_cloak, 3);
		}
	}
	else
	{
	
		fx_Player = lerp(fx_Player,0,0.05); 
		colorPlayer_fx_params.g_Intensity = fx_Player;	
		fx_set_parameters(colorPlayer_fx, colorPlayer_fx_params);
	
		global.cloackReal = 1;
		_alpha = lerp(_alpha, 1, 0.09);
		if (_alpha > 0.9)
		{
			fx_Player = 0;
			_alpha = 1;
		}
		part_particles_create(global.naveP_sys, x, y, global.naveP , 5);

	}
}