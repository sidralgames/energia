// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StrandedShip_CheckEnchufe()
{
	with(myCable)
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
		else if (enchufe.shield == true) && (inst.chargedInAmmo == false)
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