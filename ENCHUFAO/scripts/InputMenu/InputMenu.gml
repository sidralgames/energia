// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function InputMenu()
{
	key_start = gamepad_button_check_pressed(0,gp_start) || keyboard_check(ord("P"));
}