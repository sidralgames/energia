/// @description Insert description here
// You can write your code in this editor

if instance_exists(o_playerShip)
{
	with (o_playerShip)
	{
		if (key_l3Dowm)
		{
			if point_in_triangle(other.x, other.y, x-lengthdir_x(iniLightOff,_angle-90), y-lengthdir_y(iniLightOff, _angle-90), x+lengthdir_x(lightLenght,_angle+angOff), y-1+lengthdir_y(lightLenght, _angle+angOff), x+lengthdir_x(lightLenght,_angle-angOff), y-1+lengthdir_y(lightLenght, _angle-angOff))
			{
				other.inBlindArea = true;
				other.blindFlash = lerp(other.blindFlash, 0.5, 0.95);
				other.contToBlind += other.blindFlash;
				
				if (other.contToBlind >= 40)
				{
					other.blinded = true;
					other.blindedCont = random_range(60,120);
					other.contToBlind = 0;
				}
			}
			else
			{
				other.inBlindArea = false;
			}
		}
		else
		{
			other.contToBlind -= 0.5;
			other.inBlindArea = false;
		}
	}

}

if (contToBlind <= 0)
{
	contToBlind = 0;
}
if (blindedCont >= 0) 
{
	blindedCont --;
}

if (blindedCont <=0)
{
	blinded = false;
}

if (blinded = false) && (inBlindArea = false)
{
	blindFlash = 20;
	contToBlind = 0;
}


if (global.changingTiles)
{
	if tile_meeting(x,y,"Tiles")
	{
		_hp=0;
	}
	
}

if (repelled = true)
{
	_angle = -_angle;
	repelledTime--;
	if (repelledTime <= 0)
	{
		repelled = false;
		repelledTime = repelledTimeMax;
	}
}

if (burnFlash >0)
{
	burnFlash-=0.1
}
if (electroFlash >0)
{
	electroFlash-=0.1
}

if (burned = true)
{
	contBurnPart--;
	
	if (contBurnPart <= 0)
	{
		contBurnPart = random_range(contBurnPartMax-1,contBurnPartMax+2) ;
		part_particles_create(global.partSmoke_sys, x+random_range(10,-10), y+random_range(10,-10), global.partSmoke , 1);
	}
	contBurnedTotal --;
	if (contBurnedTotal <= 0)
	{
		contBurnedTotal = contBurnedTotalMax;
		burned = false;
	}
	contBurned --;
	if (contBurned <= 0)
	{
		contBurned = contBurnedMax;
		burnFlash = 1;
		_hp-=1;
	}
}

if (electrocutated = true)
{
	contElectroPart--;
	
	if (contElectroPart <= 0)
	{
		contElectroPart = random_range(1,3) ;
		part_particles_create(global.overCharged_sys, x+random_range(15,-15), y+random_range(15,-15), global.overChargedPart , 2);
	}
	contElectroTotal --;
	if (contElectroTotal <= 0)
	{
		contElectroTotal = contBurnedTotalMax;
		electrocutated = false;
	}
	contElectro --;
	if (contElectro <= 0)
	{
		contElectro = contBurnedMax;
		electroFlash = 1;
		_hp-=1;
	}
}

if (blinded = true)
{
	contElectroPart--;
	
	if (contElectroPart <= 0)
	{
		contElectroPart = random_range(1,3) ;
		part_particles_create(global.blinded_sys, x+random_range(15,-15), y+random_range(15,-15), global.blindedPart , 2);
	}
}


if (freeze = true)
{
	if (freezing >= 0.8)
	{
		freezing = 0.8;
	}

	if (freezing >= 0)
	{
		freezing-=0.005;	
	}

	if (freezing<= 0)
	{
		slowedCont = 0;
		freeze = false;
	}
}
	

checkHPEnemies();




