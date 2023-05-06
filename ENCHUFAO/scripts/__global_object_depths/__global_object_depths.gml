function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // o_camara
	global.__objectDepths[1] = 0; // o_wall
	global.__objectDepths[2] = 0; // o_wallBoss
	global.__objectDepths[3] = 0; // o_wall2
	global.__objectDepths[4] = 0; // o_wallFuera
	global.__objectDepths[5] = -1; // o_wall1
	global.__objectDepths[6] = -8; // o_player
	global.__objectDepths[7] = -8; // o_crosshair
	global.__objectDepths[8] = -1; // o_hook
	global.__objectDepths[9] = 0; // o_partEstrella
	global.__objectDepths[10] = -5; // o_torreta
	global.__objectDepths[11] = 0; // o_partiArma
	global.__objectDepths[12] = -1; // o_vida
	global.__objectDepths[13] = 0; // o_vida_spawner
	global.__objectDepths[14] = 0; // o_wall_spawner
	global.__objectDepths[15] = 0; // o_inter
	global.__objectDepths[16] = -15; // o_main
	global.__objectDepths[17] = -3; // o_misilSpawner
	global.__objectDepths[18] = -4; // o_misil
	global.__objectDepths[19] = -4; // o_misilRacimo
	global.__objectDepths[20] = -4; // o_explosion
	global.__objectDepths[21] = -9; // o_explotocado
	global.__objectDepths[22] = 0; // o_partMisil
	global.__objectDepths[23] = 0; // o_partOjoBoss
	global.__objectDepths[24] = 0; // o_partOjoBossA
	global.__objectDepths[25] = 0; // o_partMisilRa
	global.__objectDepths[26] = 0; // o_part_muelle
	global.__objectDepths[27] = 0; // o_partMisilA
	global.__objectDepths[28] = 0; // o_partEnemigoS
	global.__objectDepths[29] = 0; // o_partEnemigoS2
	global.__objectDepths[30] = 0; // o_partMisilV
	global.__objectDepths[31] = 0; // o_partMisilV2
	global.__objectDepths[32] = 0; // o_princi
	global.__objectDepths[33] = -20; // o_inicio
	global.__objectDepths[34] = -4; // o_balaTorrreta
	global.__objectDepths[35] = -4; // o_balaVerde
	global.__objectDepths[36] = -9; // o_balaTorretaBoss
	global.__objectDepths[37] = -9; // o_balaTorretaBoss2
	global.__objectDepths[38] = -5; // o_murci
	global.__objectDepths[39] = -13; // Shader
	global.__objectDepths[40] = -5; // o_coco
	global.__objectDepths[41] = -4; // o_muelle
	global.__objectDepths[42] = -5; // o_laserSuelo
	global.__objectDepths[43] = -10; // splash
	global.__objectDepths[44] = -11; // o_gameOver
	global.__objectDepths[45] = -11; // o_win
	global.__objectDepths[46] = -9; // o_enemySuelo
	global.__objectDepths[47] = -9; // o_enemySuelo2
	global.__objectDepths[48] = -9; // o_enemigoSuelo3
	global.__objectDepths[49] = -10; // o_enemigoSueloDoble
	global.__objectDepths[50] = -6; // o_clon
	global.__objectDepths[51] = -6; // o_clon_inicio
	global.__objectDepths[52] = 0; // o_cocospawner
	global.__objectDepths[53] = 0; // o_sistema
	global.__objectDepths[54] = 0; // o_Boss
	global.__objectDepths[55] = -7; // o_cupula
	global.__objectDepths[56] = -7; // o_cupula2
	global.__objectDepths[57] = -7; // o_boss2
	global.__objectDepths[58] = -7; // o_boss3
	global.__objectDepths[59] = 0; // o_boton1
	global.__objectDepths[60] = 0; // o_boton2
	global.__objectDepths[61] = 0; // o_boton3
	global.__objectDepths[62] = 0; // o_boton4
	global.__objectDepths[63] = 0; // o_boton5
	global.__objectDepths[64] = 0; // o_boton6
	global.__objectDepths[65] = -8; // o_partebajo
	global.__objectDepths[66] = -7; // object51
	global.__objectDepths[67] = -6; // bola
	global.__objectDepths[68] = -6; // o_exploCup
	global.__objectDepths[69] = 3; // o_elgancho
	global.__objectDepths[70] = 2; // cocoGancho
	global.__objectDepths[71] = 0; // o_bombLines
	global.__objectDepths[72] = 0; // o_bombLines2
	global.__objectDepths[73] = -2; // menuSelection
	global.__objectDepths[74] = -2; // o_options
	global.__objectDepths[75] = -2; // o_credits
	global.__objectDepths[76] = -2; // o_htp
	global.__objectDepths[77] = -4; // o_rombotras
	global.__objectDepths[78] = -10; // o_therhomboss
	global.__objectDepths[79] = -10; // o_quadri
	global.__objectDepths[80] = -10; // o_ojocartel
	global.__objectDepths[81] = 0; // o_pasar_lvl
	global.__objectDepths[82] = -6; // o_cristal
	global.__objectDepths[83] = -1; // o_tope
	global.__objectDepths[84] = 0; // o_story


	global.__objectNames[0] = "o_camara";
	global.__objectNames[1] = "o_wall";
	global.__objectNames[2] = "o_wallBoss";
	global.__objectNames[3] = "o_wall2";
	global.__objectNames[4] = "o_wallFuera";
	global.__objectNames[5] = "o_wall1";
	global.__objectNames[6] = "o_player";
	global.__objectNames[7] = "o_crosshair";
	global.__objectNames[8] = "o_hook";
	global.__objectNames[9] = "o_partEstrella";
	global.__objectNames[10] = "o_torreta";
	global.__objectNames[11] = "o_partiArma";
	global.__objectNames[12] = "o_vida";
	global.__objectNames[13] = "o_vida_spawner";
	global.__objectNames[14] = "o_wall_spawner";
	global.__objectNames[15] = "o_inter";
	global.__objectNames[16] = "o_main";
	global.__objectNames[17] = "o_misilSpawner";
	global.__objectNames[18] = "o_misil";
	global.__objectNames[19] = "o_misilRacimo";
	global.__objectNames[20] = "o_explosion";
	global.__objectNames[21] = "o_explotocado";
	global.__objectNames[22] = "o_partMisil";
	global.__objectNames[23] = "o_partOjoBoss";
	global.__objectNames[24] = "o_partOjoBossA";
	global.__objectNames[25] = "o_partMisilRa";
	global.__objectNames[26] = "o_part_muelle";
	global.__objectNames[27] = "o_partMisilA";
	global.__objectNames[28] = "o_partEnemigoS";
	global.__objectNames[29] = "o_partEnemigoS2";
	global.__objectNames[30] = "o_partMisilV";
	global.__objectNames[31] = "o_partMisilV2";
	global.__objectNames[32] = "o_princi";
	global.__objectNames[33] = "o_inicio";
	global.__objectNames[34] = "o_balaTorrreta";
	global.__objectNames[35] = "o_balaVerde";
	global.__objectNames[36] = "o_balaTorretaBoss";
	global.__objectNames[37] = "o_balaTorretaBoss2";
	global.__objectNames[38] = "o_murci";
	global.__objectNames[39] = "Shader";
	global.__objectNames[40] = "o_coco";
	global.__objectNames[41] = "o_muelle";
	global.__objectNames[42] = "o_laserSuelo";
	global.__objectNames[43] = "splash";
	global.__objectNames[44] = "o_gameOver";
	global.__objectNames[45] = "o_win";
	global.__objectNames[46] = "o_enemySuelo";
	global.__objectNames[47] = "o_enemySuelo2";
	global.__objectNames[48] = "o_enemigoSuelo3";
	global.__objectNames[49] = "o_enemigoSueloDoble";
	global.__objectNames[50] = "o_clon";
	global.__objectNames[51] = "o_clon_inicio";
	global.__objectNames[52] = "o_cocospawner";
	global.__objectNames[53] = "o_sistema";
	global.__objectNames[54] = "o_Boss";
	global.__objectNames[55] = "o_cupula";
	global.__objectNames[56] = "o_cupula2";
	global.__objectNames[57] = "o_boss2";
	global.__objectNames[58] = "o_boss3";
	global.__objectNames[59] = "o_boton1";
	global.__objectNames[60] = "o_boton2";
	global.__objectNames[61] = "o_boton3";
	global.__objectNames[62] = "o_boton4";
	global.__objectNames[63] = "o_boton5";
	global.__objectNames[64] = "o_boton6";
	global.__objectNames[65] = "o_partebajo";
	global.__objectNames[66] = "object51";
	global.__objectNames[67] = "bola";
	global.__objectNames[68] = "o_exploCup";
	global.__objectNames[69] = "o_elgancho";
	global.__objectNames[70] = "cocoGancho";
	global.__objectNames[71] = "o_bombLines";
	global.__objectNames[72] = "o_bombLines2";
	global.__objectNames[73] = "menuSelection";
	global.__objectNames[74] = "o_options";
	global.__objectNames[75] = "o_credits";
	global.__objectNames[76] = "o_htp";
	global.__objectNames[77] = "o_rombotras";
	global.__objectNames[78] = "o_therhomboss";
	global.__objectNames[79] = "o_quadri";
	global.__objectNames[80] = "o_ojocartel";
	global.__objectNames[81] = "o_pasar_lvl";
	global.__objectNames[82] = "o_cristal";
	global.__objectNames[83] = "o_tope";
	global.__objectNames[84] = "o_story";


	global.__objectDepths[85] = 0; // obj_autotile_controller
	global.__objectDepths[86] = -10; // obj_button
	global.__objectDepths[87] = 0; // obj_expand_controller
	global.__objectDepths[88] = 0; // obj_test_controller
	global.__objectDepths[89] = 0; // obj_tile


	global.__objectNames[85] = "obj_autotile_controller";
	global.__objectNames[86] = "obj_button";
	global.__objectNames[87] = "obj_expand_controller";
	global.__objectNames[88] = "obj_test_controller";
	global.__objectNames[89] = "obj_tile";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
