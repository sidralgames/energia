/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (onlyHead)
{
	if (global.bombIsHomingBomb)
{
	_hp -= 3 *global.damageDealt;
	instance_destroy(other);
}
else
{
	_hp -=5 *global.damageDealt;
	instance_destroy(other);
}

}



