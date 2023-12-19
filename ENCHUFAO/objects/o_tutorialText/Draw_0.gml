/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

draw_set_font(customFont2)
draw_set_halign(fa_center)

if !instance_exists(o_enchufeBombs)
{
	o_playerShip.canSlowMotion = false;
	o_main.alarm[1] = 0;
}
if instance_exists(o_enchufe) 
{
	draw_sprite_ext(s_energyText, 0, o_enchufe.x,o_enchufe.y-50,1,1,0,image_blend, image_alpha)	
}

if instance_exists(o_enchufe_Hp) && (global.hp <= global.hpMax)
{
	draw_sprite_ext(s_energyText, 1, o_enchufe_Hp.x,o_enchufe_Hp.y-50,1,1,0,image_blend, image_alpha)	
}

if instance_exists(o_enchufe_Ammo) && (global.ammo <= global.ammoMax)
{
	draw_sprite_ext(s_energyText, 2, o_enchufe_Ammo.x,o_enchufe_Ammo.y-50,1,1,0,image_blend, image_alpha)	
}

if instance_exists(o_enchufe_Laser) && (global.laser <= global.laserMax)
{
	draw_sprite_ext(s_energyText, 3, o_enchufe_Laser.x,o_enchufe_Laser.y-50,1,1,0,image_blend, image_alpha)	
}

if instance_exists(o_enchufeBombs) && (global.bombAmmo <= global.bombAmmoMax)
{
	draw_sprite_ext(s_energyText, 4, o_enchufeBombs.x,o_enchufeBombs.y-50,1,1,0,image_blend, image_alpha)	
}


if (Energycreated = false)
{
	draw_sprite_ext(s_moveTutorial, 0, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+325,0.7,0.7,0,image_blend, image_alpha)		
}

if (Energycreated) && !instance_exists(o_enchufe_Ammo)
{
	draw_sprite_ext(s_moveTutorial, 0, __view_get( e__VW.XView, 0 )+260,__view_get( e__VW.YView, 0 )+325,0.7,0.7,0,image_blend, image_alpha)		
	draw_sprite_ext(s_moveTutorial, 1, __view_get( e__VW.XView, 0 )+380,__view_get( e__VW.YView, 0 )+325,0.7,0.7,0,image_blend, image_alpha)		
}

if (Ammocreated) && !instance_exists(o_enchufeBombs)
{
	draw_sprite_ext(s_moveTutorial, 0, __view_get( e__VW.XView, 0 )+200,__view_get( e__VW.YView, 0 )+330,0.4,0.4,0,image_blend, image_alpha)		
	draw_sprite_ext(s_moveTutorial, 1, __view_get( e__VW.XView, 0 )+445,__view_get( e__VW.YView, 0 )+330,0.4,0.4,0,image_blend, image_alpha)
	draw_sprite_ext(s_moveTutorial, 2, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+315,0.7,0.7,0,image_blend, image_alpha)		
}

if (bombCreated) && (global.bombsTutorial < 2)
{
	if (global.slowMoTime > global.slowMoTime > 105)
	{
		draw_sprite_ext(s_moveTutorial, 5, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+30,0.7,0.7,0,image_blend, image_alpha)		
	}
	
	if (o_playerShip.key_BulletTime = false)
	{
		draw_sprite_ext(s_moveTutorial, 2, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+325,0.4,0.4,0,image_blend, image_alpha)
		draw_sprite_ext(s_moveTutorial, 3, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+295,0.7,0.7,0,image_blend, image_alpha)
	}
}

if (LaserCreated) && (global.laserTutorial < 300)
{
	if (global.slowMoTime > global.slowMoTime > 105)
	{
		draw_sprite_ext(s_moveTutorial, 5, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+30,0.7,0.7,0,image_blend, image_alpha)		
	}
	
	if (o_playerShip.key_BulletTime = false)
	{
		draw_sprite_ext(s_moveTutorial, 2, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+335,0.4,0.4,0,image_blend, image_alpha)
		draw_sprite_ext(s_moveTutorial, 3, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+310,0.4,0.4,0,image_blend, image_alpha)		
		draw_sprite_ext(s_moveTutorial, 4, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+290,0.7,0.7,0,image_blend, image_alpha)	
	}
}

if (global.energy <=2)
{
	global.energy =2;
}
if (global.hp <=1)
{
	global.hp =1;
}


if (global.energy <= global.energyLow) 
{
	if (Energycreated = false)
	{
		xx = irandom(30);
		yy = irandom(30);
		if (global.wallgrid_[# xx, yy] == FLOOR) 
		{	
			var exM = xx * CELL_WIDTH+CELL_WIDTH/2;
			var eyM = yy * CELL_HEIGHT+CELL_HEIGHT/2;
				
			if (irandom(oddsEnchufeEnergy) == oddsEnchufeEnergy) && (EnchufeEnergycreated = false)
			{
				nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)

				if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 100) &&
				(point_distance(exM, eyM, o_playerShip.x, o_playerShip.y) < 300)
				{
					instance_create_layer(exM,eyM,"Enchufes",o_enchufe); 
					EnchufeEnergycreated = true;
					Energycreated = true;
				}
			}
		}
	}
}




if (global.energy >= global.energyMax-300) && instance_exists(o_enchufe)
{
	if (HPcreated = false)
	{
		xx = irandom(30);
		yy = irandom(30);
		if (global.wallgrid_[# xx, yy] == FLOOR) 
		{	
			var exM = xx * CELL_WIDTH+CELL_WIDTH/2;
			var eyM = yy * CELL_HEIGHT+CELL_HEIGHT/2;
				
			if (irandom(oddsEnchufeHP) == oddsEnchufeHP) && (EnchufeHPcreated = false)
			{
				nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)

				if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 100) &&
				(point_distance(exM, eyM, o_playerShip.x, o_playerShip.y) < 300)
				{
					instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Hp); 
					EnchufeHPcreated = true;
					HPcreated = true;
				}
			}
		}
	}
}

if (global.hp >= 2)
{
	if (Ammocreated = false)
	{
		xx = irandom(30);
		yy = irandom(30);
		if (global.wallgrid_[# xx, yy] == FLOOR) 
		{	
			var exM = xx * CELL_WIDTH+CELL_WIDTH/2;
			var eyM = yy * CELL_HEIGHT+CELL_HEIGHT/2;
				
			if (irandom(oddsEnchufeAmmo) == oddsEnchufeAmmo) && (EnchufeAmmocreated = false)
			{
				nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)

				if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 100) &&
				(point_distance(exM, eyM, o_playerShip.x, o_playerShip.y) < 300)
				{
					instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Ammo); 
					EnchufeAmmocreated = true;
					Ammocreated = true;
					CanCreateEnemies = true;
				}
			}
		}
	}
}

if (global.bombsTutorial >= 2)
{
	
	if (LaserCreated = false)
	{
		xx = irandom(30);
		yy = irandom(30);
		if (global.wallgrid_[# xx, yy] == FLOOR) 
		{	
			var exM = xx * CELL_WIDTH+CELL_WIDTH/2;
			var eyM = yy * CELL_HEIGHT+CELL_HEIGHT/2;
				
			if (irandom(oddsEnchufeLaser) == oddsEnchufeLaser) && (EnchufeLasercreated = false)
			{
				nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)

				if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 100) &&
				(point_distance(exM, eyM, o_playerShip.x, o_playerShip.y) < 300)
				{
					instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Laser); 
					EnchufeLasercreated = true;
					LaserCreated = true;
				}
			}
		}
	}
}


if (global.enemiesKilled > 1)
{
	if (bombCreated = false)
	{
		xx = irandom(30);
		yy = irandom(30);
		if (global.wallgrid_[# xx, yy] == FLOOR) 
		{	
			var exM = xx * CELL_WIDTH+CELL_WIDTH/2;
			var eyM = yy * CELL_HEIGHT+CELL_HEIGHT/2;
				
			if (irandom(oddsEnchufebomb) == oddsEnchufebomb) && (EnchufeBombcreated = false)
			{
				nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)

				if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 100) &&
				(point_distance(exM, eyM, o_playerShip.x, o_playerShip.y) < 300)
				{
					instance_create_layer(exM,eyM,"Enchufes",o_enchufeBombs); 
					EnchufeBombcreated = true;
					bombCreated = true;
					global.slowMoTime = global.slowMoTimeMax;
				}
			}
		}
	}
}

if (CanCreateEnemies)
{
	contEnemies--;
	if (contEnemies <= 0)
	{
		contEnemies = random_range(250, 380);
		xx = irandom(30);
		yy = irandom(24);
		if (global.wallgrid_[# xx, yy] == FLOOR) 
		{	
			var exM = xx * CELL_WIDTH+CELL_WIDTH/2;
			var eyM = yy * CELL_HEIGHT+CELL_HEIGHT/2;
			instance_create(exM,eyM, o_EnemyIncoming)
		}
	
	}
}

