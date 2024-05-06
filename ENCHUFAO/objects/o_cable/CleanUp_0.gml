/// @description Clean memory
if (verletSystemExists(verletSystem1)) {
	verletSystem1.cleanup();
	delete verletSystem1;
}

ds_map_clear(chipList);
