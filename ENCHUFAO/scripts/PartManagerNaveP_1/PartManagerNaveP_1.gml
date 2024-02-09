// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function PartManagerNaveP_1()
{
	naveP_sizeInc = lerp(naveP_sizeInc, -0.025, 0.1);
	naveP_minLife = lerp(naveP_minLife, 75, 0.1);
	naveP_maxLife = lerp(naveP_maxLife, 80, 0.1);
	
	part_type_life(global.naveP, naveP_minLife,naveP_maxLife);
	part_type_size(global.naveP, 1,1.5,naveP_sizeInc,0);
}