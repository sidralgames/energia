/// @description Insert description here
// You can write your code in this editor
if (global.chipsNumber < o_cable._segments)
{
	switch(_sprite)
	{
		case s_temporary_fireRate:
		{
			
			global.temporaryFireRate = global.temporaryTimeMax;
		
			with(o_cable)
			{
				chipAmmoSuper = instance_create_layer(x,y,"Player",o_chipAmmoSuper)
				rope1.vertexAttachObject(initialChipIndex+global.chipsNumber, chipAmmoSuper, vertexAttachmentType.both);
				chipAmmoSuper.chipNum = initialChipIndex+global.chipsNumber;
				chipAmmoSuper.tipo = "FireRate";
			}
		
			global.chipsNumber+=1;
		
		}break;
	
		case s_temporary_superShot:
		{
		
			global.temporarySuperShot = global.temporaryTimeMax;
		
			with(o_cable)
			{
				chipAmmoSuper = instance_create_layer(x,y,"Player",o_chipAmmoSuper)
				rope1.vertexAttachObject(initialChipIndex+global.chipsNumber, chipAmmoSuper, vertexAttachmentType.both);
				chipAmmoSuper.chipNum = initialChipIndex+global.chipsNumber;
				chipAmmoSuper.tipo = "SuperShot";
			}
		
			global.chipsNumber+=1;
		
		}break;
	
		case s_temporary_laser:
		{
		
			global.temporaryLaser = global.temporaryTimeMax;
		
			with(o_cable)
			{
				chipLaser = instance_create_layer(x,y,"Player",o_chipLaser)
				rope1.vertexAttachObject(initialChipIndex+global.chipsNumber, chipLaser, vertexAttachmentType.both);
				chipLaser.chipNum = initialChipIndex+global.chipsNumber;
			}
		
			global.chipsNumber+=1;
		
		}break;
	}
}

instance_destroy();







