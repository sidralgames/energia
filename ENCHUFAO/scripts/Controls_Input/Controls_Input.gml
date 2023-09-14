// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Controls_Input()
{
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A")) || gamepad_button_check(0, gp_padl) || gamepad_axis_value(0, gp_axislh) < -0.5;
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D")) || gamepad_button_check(0, gp_padr) || gamepad_axis_value(0, gp_axislh) > 0.5;
	key_up = keyboard_check(vk_up) || keyboard_check(ord("W")) || gamepad_button_check(0, gp_padu) || gamepad_axis_value(0, gp_axislv) < -0.5;
	key_down = keyboard_check(vk_down) || keyboard_check(ord("S")) || gamepad_button_check(0, gp_padd) || gamepad_axis_value(0, gp_axislv) > 0.5;
	key_x = keyboard_check_pressed(ord("X")) || gamepad_button_check_pressed(0, gp_face1) || mouse_check_button_pressed(mb_right)
	key_shoot = mouse_check_button(mb_left) || gamepad_button_check(0, gp_shoulderr)
	key_laser = mouse_check_button(mb_left) || gamepad_button_check(0, gp_shoulderrb)
	key_bomb = mouse_check_button(mb_middle) || gamepad_button_check(0, gp_shoulderl)
	
	key_upP = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(0, gp_padu)// || gamepad_axis_value(0, gp_axislv) < -0.5;
	key_downP = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(0, gp_padd) //|| gamepad_axis_value(0, gp_axislv) > 0.5;
	
	
	
	key_r1Down =  gamepad_button_check(0, gp_shoulderr)
	key_l1Down =  gamepad_button_check(0, gp_shoulderl)
	key_r2Down =  gamepad_button_check(0, gp_shoulderrb)
	key_l2Down =  gamepad_button_check(0, gp_shoulderlb)
	
	key_r3Dowm = gamepad_button_check(0, gp_stickr)
	key_l3Dowm = gamepad_button_check(0, gp_stickl)
	
	key_BulletTime = gamepad_button_check(0, gp_shoulderlb);
	key_left_p = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(0, gp_padl);
	key_right_p = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D")) || gamepad_button_check_pressed(0, gp_padr);
	
}
