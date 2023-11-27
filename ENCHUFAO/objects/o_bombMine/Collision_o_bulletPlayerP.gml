/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
flashAlpha = 1;

_hp -= (global.superShot+global.amplifyPowerAmmo)*global.damageDealt; //--- DO DAMAGE TO ENEMY ---//

instance_destroy(other);

RecoverBullet();


