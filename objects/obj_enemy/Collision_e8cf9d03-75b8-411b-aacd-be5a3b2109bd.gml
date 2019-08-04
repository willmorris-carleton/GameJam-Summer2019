/// @description Insert description here
// You can write your code in this editor
instance_destroy();
with obj_bullet {
	if slowmotion {
		audio_play_sound(snd_eKilled, 10, false);
	}
	else {
		audio_play_sound(snd_pop, 10, false);
	}
}
score++;