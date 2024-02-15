// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información


function CreateTemporaryChip(argument0) //odds
{
	if irandom(argument0-1) = argument0-1
	{
		tempPickUp = instance_create_layer(x,y, "Cable", o_temporaryPickUp)
		tempPickUp._hpush = lengthdir_x(enemySpeed, _angle);
		tempPickUp._vpush = lengthdir_y(enemySpeed, _angle);
		tempPickUp.image_angle = _angle;
	}
}