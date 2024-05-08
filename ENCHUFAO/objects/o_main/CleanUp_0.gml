/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
FreeMemory();
SaveGame();

if !ds_exists(global.wallgrid_,ds_type_grid) && !instance_exists(o_gridRoom)
{
	room_goto(Sala_Inicio);
}









