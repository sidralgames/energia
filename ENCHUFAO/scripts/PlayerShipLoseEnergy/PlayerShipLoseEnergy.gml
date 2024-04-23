// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function PlayerShipLoseEnergy()
{
if (!global.infiniteEnergyIsOn)
	{
		if (global.energy>0)
		{
			if (abs(o_playerShip._hpush) >= 0.1) || (abs(o_playerShip._vpush) >= 0.1)
			{
				global.energy-=(0.3 * global.cloackReal ) / global.DischargeTime
			}
			else
			{
				global.energy-= (0.1 * global.cloackReal ) / global.DischargeTime
			}
		}
	}
}