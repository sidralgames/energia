/// @description Insert description here
// You can write your code in this editor
inScreen =  (x > __view_get( e__VW.XView, 0 )-50 && x < __view_get( e__VW.XView, 0 )+710) &&
(y > __view_get( e__VW.YView, 0 )-50 && y < __view_get( e__VW.YView, 0 )+410)


xConnectionPos = x;
yConnectionPos = y;

isOpen = (global.pluggedInEnergy) && (global.pluggedInHp) && (global.pluggedInAmmo) && (global.pluggedInLaser);

if (place_meeting(x+_hpush*1.2,y,o_enchufeStandard_Father))
{
    _hpush = -_hpush*bnc;

}
if (place_meeting(x,y+_vpush*1.2,o_enchufeStandard_Father))
{
    _vpush = -_vpush*bnc;
	
}

Move();

if (alarm[3] <= 0)
{
	image_angle += max(0.05*sign(_hpush), 2*(abs(_hpush)),0.05*sign(_vpush), 2*(abs(_vpush))*global.relativeSpeed);
	_angle = image_angle;
}

if (abierto)
{
	image_index = 1;
}
else
{
	if instance_exists(o_waller)
	{
		if (o_waller.levelType = "Secret")
		{
			image_index = 2;	
		}
		else
		{
			image_index = 0;	
		}
	}
}

if (room = Sala_0) 
{
	if (isOpen)
	{
		abierto = true;	
	}
}

if (room = Sala_Tutorial)
{
	if (isOpen)
	{
		abierto = true;	
	}
} 


if instance_exists(o_playerShip)
{
	if o_playerShip.plugged = true && (o_playerShip.pluggedFinal = true) && (enchufeActive)
	{
		if (cont = false)
		{
			
			if (o_playerShip.bumpsAchievement = true) && (global.achNoBump = 0) && (room  = Sala_0)
			{
				global.achNoBump = 1;
			}
			
			//RESET UPGRADES
			if (room = Sala_Upgade)
			{
				for (var i = 0; i < global.numberOfUpgrades-1; i++)
				{
					upgrades = ds_map_find_value(global.upgradesList,i);
					if (upgrades.canShowUp == true)
					{
						upgrades.isPicked = false;
					}
				}
			}
			
			
			if (room = Sala_MegaUpgrade)
			{
				for (var i = 0; i < global.numberOfMegaUpgrades-1; i++)
				{
					upgrades = ds_map_find_value(global.megaUpgradesList,i);
					if (upgrades.canShowUp == true)
					{
						upgrades.isPicked = false;
					}
				}
			}
			
			if instance_exists(o_chipFather)
			{
				o_chipFather._hp = 10;
			}
			
			global.goToSecretRoom = false;
			
			cont = true
			alarm[0] = 60;
		}
	}
}

if (alarm[2] <= 0)
{
	if instance_exists(o_waller)
	{
		if (o_waller.levelType = "Secret")
		{
			if !instance_exists(o_enchufeUpgradeCapsule) && !instance_exists(o_enemyP)
			{
				abierto = true;
			}
		}
	}
}

if (abierto) && (haveHPnow = false)
{
	haveHPnow = true;
}

if (haveHPnow)
{
	if (_hp <= 0)
	{
		explo = instance_create(x,y,o_exploPurple)
		
		brokenL = instance_create_layer(x,y, "Enchufes", o_enchufeFinal_Broken_L);
		brokenR = instance_create_layer(x,y, "Enchufes", o_enchufeFinal_Broken_R);
		
		brokenL.firstCont = 90;
		brokenL._angle = _angle+180;
		brokenL._hpush = lengthdir_x(0.5, _angle+180)
		brokenL._vpush = lengthdir_y(0.5, _angle+180)
		
		brokenR.firstCont = 90;
		brokenR._angle = _angle
		brokenR._hpush = lengthdir_x(0.5, _angle)
		brokenR._vpush = lengthdir_y(0.5, _angle)
		
		instance_destroy();
	}
}