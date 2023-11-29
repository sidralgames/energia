// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossWormChasingLogic()
{
	EnemyMouthMoveAndBreak();
		
	inEnchufe = collision_circle(x,y,30,o_enchufeStandard_Father,false,true)
	if contCanPlug >0
	{
		contCanPlug--;
	}
		
	if (inEnchufe) && (contCanPlug<=0)
	{	
		enchufe = inEnchufe;
		if (!enchufe.occupied) && (!plugged) && (!enchufe.enchufeBomb)
		{
			enchufe.occupied = true;
			plugging = true;
			contPlugged = random_range(contPluggedMin, contPluggedMax)
		}
	}
		
	if (plugged)
	{
		contPlugged--;
			
		if (contPlugged<=0)
		{
			plugged = false;
			cable.contPlugBody = 50;
			enchufe.occupied = false;
			enchufe.enchufeOvercharged = true;
			enchufe.contOvercharged = 250;
			contCanPlug = 120;
			contPlugged = random_range(contPluggedMin, contPluggedMax)
		}
	
		if (point_distance(x,y,enchufe.x,enchufe.y) <= cable._segments*17)
		{
			EnemyMouthMoveAndBreak()
		}
		else
		{
			a = point_direction(x,y,enchufe.x,enchufe.y)

			direction += sign(dsin(a - direction)) * (precision * global.relativeSpeed);
			_angle = direction;
			speed = enemySpeed * min(1, global.relativeSpeed+0.2);
			enchufe._hpush -= lengthdir_x(0.1,a);
			enchufe._vpush -= lengthdir_y(0.1,a);
		}
		
		EnemyMouthFree_PluggedAttack();
			
	}
}