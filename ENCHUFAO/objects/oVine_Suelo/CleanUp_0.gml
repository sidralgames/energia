/// @description Insert description here
// You can write your code in this editor
if alarm[0] <=0
{
	if (verletSystemExists(verletSystem1)) {
		verletSystem1.cleanup();
		delete verletSystem1;
	}
}
