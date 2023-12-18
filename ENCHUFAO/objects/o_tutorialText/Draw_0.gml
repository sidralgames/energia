/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

draw_set_font(customFont2)
draw_set_halign(fa_center)

if (Ammocreated)
{
	draw_text(__view_get( e__VW.XView, 0 )+240,__view_get( e__VW.YView, 0 )+60, "R1 SHOOT")	
}

if (LaserCreated)
{
	draw_text(__view_get( e__VW.XView, 0 )+400,__view_get( e__VW.YView, 0 )+60, "R2 LASER")	
}

draw_text(__view_get( e__VW.XView, 0 )+240,__view_get( e__VW.YView, 0 )+40, "L MOVE")	
draw_text(__view_get( e__VW.XView, 0 )+400,__view_get( e__VW.YView, 0 )+40, "R AIM")	


if (global.energy <=2)
{
	global.energy =2;
}
if (global.hp <=1)
{
	global.hp =1;
}

if instance_exists(o_enchufe_Hp)
{
	if (global.hp <=3)
	{
		draw_text(o_enchufe_Hp.x,o_enchufe_Hp.y-70, "Energy + HP")	
	}
}

if instance_exists(o_enchufe_Ammo)
{
	if (global.ammo <=50)
	{
		draw_text(o_enchufe_Ammo.x,o_enchufe_Ammo.y-70, "Energy + Ammo")	
	}
}


if instance_exists(o_enchufe_Laser)
{
	if (global.laser <=50)
	{
		draw_text(o_enchufe_Laser.x,o_enchufe_Laser.y-70, "Energy + Laser")	
	}
}

if instance_exists(o_enchufe)
{
	if (global.energy <=global.energyMax-200)
	{
		draw_text(o_enchufe.x,o_enchufe.y-70, "Recharge Energy")	
	}
}

if (global.energy >= global.energyMax-200)
{
	if (HPcreated = false)
	{
		HPcreated = true;
		instance_create_layer(__view_get( e__VW.XView, 0 )+520,__view_get( e__VW.YView, 0 )+80, "Enchufes", o_enchufe_Hp)
	}
}

if (global.hp >= 2)
{
	if (Ammocreated = false)
	{
		CanCreateEnemies = true;
		Ammocreated = true;
		instance_create_layer(__view_get( e__VW.XView, 0 )+60,__view_get( e__VW.YView, 0 )+290, "Enchufes", o_enchufe_Ammo)
	}
}

if (global.ammo >= 50)
{
	if (LaserCreated = false)
	{
		LaserCreated = true;
		instance_create_layer(__view_get( e__VW.XView, 0 )+250,__view_get( e__VW.YView, 0 )+150, "Enchufes", o_enchufe_Laser)
	}
}

if (CanCreateEnemies)
{
	contEnemies--;
	if (contEnemies <= 0)
	{
		contEnemies = random_range(400, 600);
		instance_create(__view_get( e__VW.XView, 0 )+40+irandom(500),__view_get( e__VW.YView, 0 )+30+irandom(300), o_EnemyIncoming)
	}
}

