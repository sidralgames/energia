/// @description Insert description here
// You can write your code in this editor
hp = random_range(300,600);

alarm[0] = 30;
alarm[1] = hp;
image_speed = 0.75;
minRate = random_range(5,10)
maxRate = random_range(30,40)
if (room = Sala_0)
{
	instance_create_layer(x,y,"Banners",o_breachBanner)
}
global.breachBanner = true;
contBanner = 0;

spawn = choose (3,3)