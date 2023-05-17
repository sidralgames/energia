/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if ((other.hSpeed) > 0.2 || abs(other.vSpeed) > 1){
    xset  =choose(-hskewEnemy,hskewEnemy)
}
if ((other.hSpeed) < -0.2 || abs(other.vSpeed) > 1){
    xset  =choose(-hskewEnemy,hskewEnemy)
}

if global.nivel>4 && global.nivel<9{
   if (tocadoS) {
      part_particles_create(global.partSeta_sys, x+random_range(-3,3), y-random_range(6,10), global.partSeta , random_range(2,10))
      tocadoS = false;
	  alarm[1]=random_range(200,300);
   }



}