/// @description Insert description here
// You can write your code in this editor

Controls_Input();




if (key_upP)
{
	gripperCreated = false;
	freewormCreated = false;
	wormageddonCreated = false;
	gusaneneCreated = false;
	rot = 0;
	drawWall = true;
	wallYoff = wallYoffInitial;
	wallBest = false;
	selected-=1;
	wallMouth = false;
	alphaInfo=0;
	targetCreated = false;
	tipChoosed = false;
	enchufeChoosed = false;
	imageSprite = 0;
	factorInitialX =0.09;
	initialX = initialXReserve;
	initialXWall = initialX;
	settedHue = false
	part_type_alpha2(global.EnemyKilledBy_part, 1,1);
	audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
	
}
if (key_downP)
{
	gripperCreated = false;
	freewormCreated = false;
	wormageddonCreated = false;
	gusaneneCreated = false;
	rot = 0;
	drawWall = true;
	wallYoff = wallYoffInitial;
	wallBest = false;
	factorInitialX =0.09;
	selected+=1;
	wallMouth = false;
	alphaInfo=0;
	tipChoosed = false;
	imageSprite = 0;
	targetCreated = false;
	enchufeChoosed = false;
	initialX = initialXReserve;
	initialXWall = initialX;
	settedHue = false
	part_type_alpha2(global.EnemyKilledBy_part, 1,1);
	audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
}


if (selected > 4)
{
	selected  = 0	
}

if (selected < 0)
{
	selected = 4
}


if (selected = 3)
{
	if (key_rightP) 
	{
		gripperCreated = false;
		freewormCreated = false;
		wormageddonCreated = false;
		gusaneneCreated = false;
		audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
		initialX = 200;
		initialXWall = initialX;
		initialXReserve = 200;
		positionChoosed = false;
		initialXText = 350;
		initialXInterrog = 280;
		selectedBest+=1;
		xScale = 1;
		alphaInfo=0;
		scaleArrowsR =0.5;
		tipChoosed = false;
		wallMouth = false;
		alarm[0] = 10;
		aliasOff = 10;
		factorInitialX =0.09;
		enchufeChoosed = false;
		targetCreated = false;
		imageSprite = 0;
		wallBest = false;
		drawWall = true;
		wallYoff = wallYoffInitial;
		rot = 0;
		settedHue = false
		//contParts = 0;
		part_type_direction(global.EnemyKilledBy_part,175,185,0,1);
	}
	if (key_leftP)
	{
		gripperCreated = false;
		freewormCreated = false;
		wormageddonCreated = false;
		gusaneneCreated = false;
		audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
		initialX = 440;
		initialXWall = initialX;
		initialXReserve = 440;
		initialXText = 290;
		positionChoosed = false;
		initialXInterrog = 360
		selectedBest-=1;
		xScale = -1;
		scaleArrowsL =0.5;
		alphaInfo=0;
		tipChoosed = false;
		wallMouth = false;
		alarm[0] = 10;
		aliasOff = 10;
		factorInitialX =0.09;
		targetCreated = false;
		enchufeChoosed = false;
		imageSprite = 0;
		wallBest = false;
		drawWall = true;
		wallYoff = wallYoffInitial;
		rot = 0;
		settedHue = false
		//contParts = 0;
		part_type_direction(global.EnemyKilledBy_part,355,5,0,1);
	}
	
	if (selectedBest > global.totalNumberOfEnemiesBestiary-1)
	{
		selectedBest  = 0	
	}
	if (selectedBest < 0) 
	{
		selectedBest = global.totalNumberOfEnemiesBestiary-1;
	}
}


if (selected = 1)
{
	
	
	
	
	
	if (key_rightP)
	{
		audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
		selectedAch+=1;
		if (selectedAch > global.numberOfAch-1)
		{
			selectedAch  = 0	
		}
		scaleArrowsR =0.5;
	}
	if (key_leftP)
	{
		audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
		selectedAch-=1;
		if (selected < 0) 
		{
			selectedAch = global.numberOfAch-1
		}
		scaleArrowsL =0.5;
	}
}


switch(selected)
{
	case 0:
	{

	}
	break;
	
	case 1:
	{
		
	}
	break;
	
	case 2:
	{
		
	}
	break;
	
	case 3:
	{
		
	}
	break;
	
	case 4:
	{
		if (key_x)
		{
			part_type_direction(global.EnemyKilledBy_part,175,185,0,1);
			audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
			menuHome = instance_create(x,y,o_menuHome);
			menuHome.alarm[0]=10;
			menuHome._visible = true;
			instance_destroy();
			o_nextRoom._visible = true;
		}
		
	}
	break;
}

if (key_back)
{
	gripperCreated = false;
freewormCreated = false;
wormageddonCreated = false;
gusaneneCreated = false;
	selected-=1;
	wallMouth = false;
	alphaInfo=0;
	tipChoosed = false;
	part_type_alpha2(global.EnemyKilledBy_part, 1,1);
	part_type_direction(global.EnemyKilledBy_part,175,185,0,1);
	aliasOff = 10;
	factorInitialX = 0.15;
	enchufeChoosed = false;
	imageSprite = 0;
	rot = 0;
	targetCreated = false;
	
	audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
	menuHome = instance_create(x,y,o_menuHome);
	menuHome.alarm[0]=10;
	menuHome._visible = true;
	settedHue = false
	instance_destroy();
	o_nextRoom._visible = true;
}
if instance_exists(o_wallGameOver)
{
	if (key_leftP) || (key_rightP)
	|| (key_upP) || (key_downP) || (key_back)
	{
		instance_destroy(o_enemy_Mouth);
		instance_destroy(o_mouthAnchor);
		instance_destroy(o_wallGameOver);
		instance_destroy(o_misilBombBestiary);
	}
}

if instance_exists(o_enemyGameOver_parent)
{
	if (key_leftP) || (key_rightP)
	|| (key_upP) || (key_downP) || (key_back)
	{
		if instance_exists(o_BossWorm_HitBox_Metal)
		{
			o_BossWorm_HitBox_Metal.die = true;
		}
		
		if instance_exists(o_chargerBossWorm)
		{
			o_chargerBossWorm.die = true;
		}
		
		if instance_exists(o_BossWorm_HitBox)
		{
			o_BossWorm_HitBox.die = true;
		}
		
		if instance_exists(o_EnchufeBossWorm)
		{
			o_EnchufeBossWorm.die = true;
		}
		
		instance_destroy(o_enemyGameOver_parent);
	}
}