/// @description Insert description here
// You can write your code in this editor






// Inherit the parent event
event_inherited();

IsEnchufeCapsule = true;
capsuleHaveBattery = true;
maxCharge = 400;
energy = true;
sprite_enchufePluged = s_capsuleOpen
battery = choose(o_smartBulletsPickUp, o_BouncingBulletsPickUp, o_piercingBulletsPickUp,
o_ExploBulletsPickUp, o_PushingBulletsPickUp, o_SplitBulletsPickUp, o_BurningBulletsPickUp)

batteryCreated = instance_create(x,y,battery);
batteryCreated.inCapsule = true;
batteryCreated.depth = depth+1;
scale = 0.8;