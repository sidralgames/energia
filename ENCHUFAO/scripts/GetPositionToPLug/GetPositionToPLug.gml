// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function GetPositionToPLug()
{
	if (enchufe.isPETA)
	{
		if (enchufe.fromFriend)
		{
			o_charger.scale = 0.65;
		}
		else
		{
			o_charger.scale = 0.75;
		}
		
		global.xToPlug = enchufe.x;
		global.yToPlug = enchufe.y;
	}
	else
	{
		
		o_charger.scale = enchufe.scale;
		global.xToPlug = enchufe.x;
		global.yToPlug = enchufe.y;
		
		if (enchufe.final)
		{
			o_charger.scale = 1.5;
			global.xToPlug = enchufe.xConnectionPos
			global.yToPlug = enchufe.yConnectionPos
		}
		if (enchufe.IsEnchufeMP3CHILL)
		{
			o_charger.scale = 1.5;
			global.xToPlug = enchufe.xConnectionPos
			global.yToPlug = enchufe.yConnectionPos
		}
		if (enchufe.IsEnchufeBoss)
		{
			o_charger.scale = 1.4;
			global.xToPlug = enchufe.x+lengthdir_x(30,enchufe.image_angle)
			global.yToPlug = enchufe.y+lengthdir_y(30,enchufe.image_angle)
		}
		else if (enchufe.IsEnchufeCapsule)
		{
			if (enchufe.IsEnchufeCapsuleSuper)
			{
				o_charger.scale = 1.5;
				global.xToPlug = enchufe.x+lengthdir_y(25,enchufe.image_angle)
				global.yToPlug = enchufe.y+lengthdir_y(25,enchufe.image_angle)
			}
			else
			{
				o_charger.scale = 0.8;
				global.xToPlug = enchufe.x+lengthdir_y(15,enchufe.image_angle)
				global.yToPlug = enchufe.y+lengthdir_y(15,enchufe.image_angle)
			}
		}
	}
}