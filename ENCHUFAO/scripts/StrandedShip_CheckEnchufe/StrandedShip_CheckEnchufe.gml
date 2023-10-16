// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StrandedShip_CheckEnchufe()
{
	with(myCable)
	{
		if (inst.shipReady)
		{
			if (enchufe.hp == true) 
			{
				if (floor(inst.hp) < inst.hpMax)
				{
					if (alarm[0] <=0)
					{
						part_particles_create(global.repairingPart_sys, x+random_range(-15,15), y+random_range(-15,15), global.repairingPart , 1)	
						alarm[0] = 3;
					}
					
					inst.hp+=0.015;
				}
				
			}
			
		}
		else
		{
			if (enchufe.energy == true) && (inst.chargedInEnergy == false)
			{
				if (inst.chargeEnergy <= inst.maxChargeEnergy+10)
				{
					inst.chargeEnergy+=1;
				}
				draw_sprite_ext(s_enchufeChargeHP_Out,0,x-14,y-30,1,1,0,image_blend, image_alpha)
				draw_sprite_ext(s_enchufeChargeHP_In,0,x-14,y-30,(inst.chargeEnergy/inst.maxChargeEnergy),1,0,image_blend, image_alpha)
			
				if (inst.chargeEnergy >= inst.maxChargeEnergy-1)
				{
					inst.chargedInEnergy = true;
					inst.unlocked = true;
				}
			}
			else if (enchufe.hp == true) && (inst.chargedInHp == false)
			{
				if (inst.chargeHp <= inst.maxChargeHp+10)
				{
					if (alarm[0] <=0)
					{
						part_particles_create(global.repairingPart_sys, x+random_range(-15,15), y+random_range(-15,15), global.repairingPart , 1)	
						alarm[0] = 3;
					}
					
					inst.chargeHp+=1;
				}
				draw_sprite_ext(s_enchufeChargeHP_Out,0,x-14,y-30,1,1,0,image_blend, image_alpha)
				draw_sprite_ext(s_enchufeChargeHP_In,0,x-14,y-30,(inst.chargeHp/inst.maxChargeHp),1,0,image_blend, image_alpha)
			
				if (inst.chargeHp >= inst.maxChargeHp-1)
				{
					inst.chargedInHp = true;
					inst.unlocked = true;
				}
			}
			else if (enchufe.ammo == true) && (inst.chargedInAmmo == false)
			{
				if (inst.chargeAmmo <= inst.maxChargeAmmo+10)
				{
					inst.chargeAmmo+=1;
				}
				draw_sprite_ext(s_enchufeChargeHP_Out,0,x-14,y-30,1,1,0,image_blend, image_alpha)
				draw_sprite_ext(s_enchufeChargeHP_In,0,x-14,y-30,(inst.chargeAmmo/inst.maxChargeAmmo),1,0,image_blend, image_alpha)
			
				if (inst.chargeAmmo >= inst.maxChargeAmmo-1)
				{
					inst.chargedInAmmo = true;
					inst.unlocked = true;
				}
			}
			else if (enchufe.laser == true) && (inst.chargedInAmmo == false)
			{
				if (inst.chargeAmmo <= inst.maxChargeAmmo+10)
				{
					inst.chargeAmmo+=1;
				}
				draw_sprite_ext(s_enchufeChargeHP_Out,0,x-14,y-30,1,1,0,image_blend, image_alpha)
				draw_sprite_ext(s_enchufeChargeHP_In,0,x-14,y-30,(inst.chargeAmmo/inst.maxChargeAmmo),1,0,image_blend, image_alpha)
			
				if (inst.chargeAmmo >= inst.maxChargeAmmo-1)
				{
					inst.chargedInAmmo = true;
					inst.unlocked = true;
				}
			}
		}
	}
}
