/// @description Insert description here
// You can write your code in this editor
with obj_player {
	instance_destroy()
}
if instance_exists(obj_playerBarrel) {
	with obj_playerBarrel {
		instance_destroy();
	}
}
audio_play_sound(snd_finish, 10, false);
alarm[0] = room_speed * 3;