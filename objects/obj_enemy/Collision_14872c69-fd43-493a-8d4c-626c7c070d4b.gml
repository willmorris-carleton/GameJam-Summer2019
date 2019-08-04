/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_wave) {
	with obj_wave {
		if instance_exists(obj_player) and !kill{
			with obj_player {
				sprite_index = spr_death;
			}
			alarm[0] = room_speed/4;
			kill = true;
			audio_play_sound(snd_death, 10, false);
		}
		if instance_exists(obj_playerBarrel) {
			with obj_playerBarrel {
				instance_destroy();
			}
		}
	}
}