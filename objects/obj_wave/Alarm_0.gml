/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player) {
	with obj_player {
		instance_destroy();
	}
}
alarm[1] = room_speed*2;