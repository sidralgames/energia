/// @description Insert description here
// You can write your code in this editor

if (image_index > 5 && image_index < 15)
{
	instance_deactivate_all(true)
}
x =  __view_get( e__VW.XView, 0 )+0;
y = __view_get( e__VW.YView, 0 )+0;

if (image_index >= 27)
{
	instance_activate_all();

}

if (image_index >=31)
{

	instance_deactivate_object(o_pauseMenu);
	instance_destroy();
}

