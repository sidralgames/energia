// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetHUE()
{

	_filter_huePause = layer_get_fx("PauseHUE");
	_filter_huePause_params = fx_get_parameters(_filter_huePause);
	
	_filter_huePause_Sub = layer_get_fx("PauseHUE_Sub");
	_filter_huePause_Sub_params = fx_get_parameters(_filter_huePause_Sub);

if (room != Sala_Inicio)
{
	_filter_hue = layer_get_fx("HUE");
	_filter_hue_params = fx_get_parameters(_filter_hue);
	
	
	_filter_Enemyhue = layer_get_fx("EnemiesHUE");
	_filter_Enemyhue_params = fx_get_parameters(_filter_Enemyhue);
	
	_filter_EnemyhueSub = layer_get_fx("EnemiesHUESub");
	_filter_EnemyhueSub_params = fx_get_parameters(_filter_EnemyhueSub);
	
	_filter_EnemyhueSub2 = layer_get_fx("EnemiesHUESub2");
	_filter_EnemyhueSub2_params = fx_get_parameters(_filter_EnemyhueSub2);
	
	_filter_EnemyhueSub3 = layer_get_fx("EnemiesHUESub3");
	_filter_EnemyhueSub3_params = fx_get_parameters(_filter_EnemyhueSub3);
	
	_filter_EnemyhueSub4 = layer_get_fx("EnemiesHUESub4");
	_filter_EnemyhueSub4_params = fx_get_parameters(_filter_EnemyhueSub4);
	
	_filter_EnemyhueSub5 = layer_get_fx("EnemiesHUESub5");
	_filter_EnemyhueSub5_params = fx_get_parameters(_filter_EnemyhueSub5);



	_filter_hueL = layer_get_fx("Laser");
	_filter_hueL_params = fx_get_parameters(_filter_hueL);
}

	_filterShift= choose(0.15, 0.55, 0.6, 0.7, 0.8, 1);
	
	

	
	_filter_huePause_params.g_HueShift = _filterShift;	
	_filter_huePause_params.g_HueSaturation =1;
	
	_filter_huePause_Sub_params.g_HueShift = _filterShift;	
	_filter_huePause_Sub_params.g_HueSaturation =1;
if (room != Sala_Inicio)
{	
	_filter_hue_params.g_HueShift = _filterShift;	
	_filter_hue_params.g_HueSaturation =1+random(0.25);
	
	_filter_Enemyhue_params.g_HueShift = _filterShift;	
	_filter_Enemyhue_params.g_HueSaturation = 0.75
	
	_filter_EnemyhueSub_params.g_HueShift = _filterShift;	
	_filter_EnemyhueSub_params.g_HueSaturation = 0.75
	
	_filter_EnemyhueSub2_params.g_HueShift = _filterShift;	
	_filter_EnemyhueSub2_params.g_HueSaturation = 0.75
	
	_filter_EnemyhueSub3_params.g_HueShift = _filterShift;	
	_filter_EnemyhueSub3_params.g_HueSaturation = 0.75
	
	_filter_EnemyhueSub4_params.g_HueShift = _filterShift;	
	_filter_EnemyhueSub4_params.g_HueSaturation = 0.75
	
	_filter_EnemyhueSub5_params.g_HueShift = _filterShift;	
	_filter_EnemyhueSub5_params.g_HueSaturation = 0.75


	_filter_hueL_params.g_HueShift = _filterShift;	
	_filter_hueL_params.g_HueSaturation =_filter_hue_params.g_HueSaturation;
}
	


	
	fx_set_parameters(_filter_huePause, _filter_huePause_params);
	fx_set_parameters(_filter_huePause_Sub, _filter_huePause_Sub_params);
	if (room != Sala_Inicio)
{
		fx_set_parameters(_filter_hue, _filter_hue_params);
	fx_set_parameters(_filter_Enemyhue, _filter_Enemyhue_params);
	fx_set_parameters(_filter_EnemyhueSub, _filter_EnemyhueSub_params);
	fx_set_parameters(_filter_EnemyhueSub2, _filter_EnemyhueSub2_params);
	fx_set_parameters(_filter_EnemyhueSub3, _filter_EnemyhueSub3_params);
	fx_set_parameters(_filter_EnemyhueSub4, _filter_EnemyhueSub4_params);
	fx_set_parameters(_filter_EnemyhueSub5, _filter_EnemyhueSub5_params);
	
	fx_set_parameters(_filter_hueL, _filter_hueL_params);
}
	
}