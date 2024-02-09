// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function ParticlesManager()
{
	if (global.relativeSpeed != 1)
	{
		// --- PLAYERSHIP TRAIL ---//
		PartManagerNaveP_1();
	}
	else
	{
		// --- PLAYERSHIP TRAIL ---//
		PartManagerNaveP_2();
	}
	
	if (global.superShot = 1)
	{
		part_type_size(global.balaP, 1+(global.amplifyPowerAmmo/2),1.75+(global.amplifyPowerAmmo/2),-0.075,0);
	}
	else
	{
		part_type_size(global.balaP, global.superShot+(global.amplifyPowerAmmo/2), 0.75+global.superShot+(global.amplifyPowerAmmo/2),-0.075,0);
	}
}