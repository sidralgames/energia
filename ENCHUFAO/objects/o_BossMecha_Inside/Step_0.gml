/// @description Insert description here
// You can write your code in this editor
if instance_exists(o_BossMecha)
{
	x = o_BossMecha.x;
	y = o_BossMecha.y;
}

if instance_exists(o_enemyMini_BossMecha)
{
	if point_distance(x,y,o_enemyMini_BossMecha.x, o_enemyMini_BossMecha.y) <10
	{
		o_BossMecha.sprite_index = s_bossMechaActive;
		o_BossMecha.state = BOSS2STATE.IDLE;
		o_BossMecha.idleTime=300;
		instance_destroy(o_enemyMini_BossMecha);
		global.BossGarbanzo_Awaken = true;
		contBanner = 60;
	}
}
if (bannerCreated = false) && !instance_exists(o_enemyMini_BossMecha)
{
	contBanner --;
}
if (contBanner <=0) && bannerCreated = false
{
	
	instance_create(x,y,o_LilCrusherBossBanner);
	bannerCreated = true;
}


