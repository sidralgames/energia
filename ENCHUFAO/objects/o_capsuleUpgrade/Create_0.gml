/// @description Insert description here
// You can write your code in this editor
randomize();





// Inherit the parent event
event_inherited();
_hpush = choose(random_range(0.05, 0.1),-random_range(0.05, 0.1))
_vpush = choose(random_range(0.05, 0.1), -random_range(0.05, 0.1))
energy = false;
ammo = false;
hp = false;
laser = false;

_sprite = s_capsuleUpgrade;



IsEnchufeCapsule = true;
IsEnchufeCapsuleSuper = false;
capsuleHaveSomething = true;

maxCharge = 200;

sprite_enchufePluged = s_capsuleOpen;





inside = "Upgrade";
energy = true;

switch(inside)
{
	case "Upgrade":
	{
		upgradeChosen = ds_map_find_value(global.upgradesList,irandom(global.numberOfUpgrades-1));
		
		if (upgradeChosen.canShowUp == true) && (upgradeChosen.isPicked == false)
		{
			upgradeChosen.isPicked = true;
			upgradeChosen.timesPicked += 1;
			placeholder = self;
			upgradeCreated = instance_create_layer(placeholder.x, placeholder.y, "Enchufes", upgradeChosen.obj);
		}
		
	}break;
}

scale = 1;
_hpMax = 8;
_hp = _hpMax;
image_speed =0;
bnc = 0.8;