/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
image_alpha = 0.85
//Move()
if collision_rectangle(x-200, y-40, x+200, y+40, o_playerShip, false, true)
{
	alarm[2] = 5;
	playerIn = true;
}