/// @description Insert description here
// You can write your code in this editor

if global.gas <= 0 {
	global.gas = 100;
	hasBullet = true;
	instance_destroy(obj_bullet);
}
