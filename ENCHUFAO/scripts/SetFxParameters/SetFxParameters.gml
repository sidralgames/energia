// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function SetFxParameters()
{
	layer_set_visible("EffectBreach", false);
	
	colorBT_fx = layer_get_fx("EffectColorBulletTime");
	colorBT_fx_params = fx_get_parameters(colorBT_fx);
	
	colorPlayer_fx = layer_get_fx("Player");
	colorPlayer_fx_params = fx_get_parameters(colorPlayer_fx);
	
	colorCloak_fx = layer_get_fx("CLOAK");
	colorCloak_fx_params = fx_get_parameters(colorCloak_fx);
	
	distort_fx = layer_get_fx("EffectBreach");
	distort_fx_params = fx_get_parameters(distort_fx);
	
	color_fx = layer_get_fx("EffectColor");
	color_fx_params = fx_get_parameters(color_fx);
}