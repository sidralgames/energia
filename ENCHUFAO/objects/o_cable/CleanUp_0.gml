/// @description Clean memory
if (verletSystemExists(verletSystem1)) {
	rope1.cleanup();
	verletSystem1.cleanup();
	delete rope1;
	delete verletSystem1;
}


