if room != rm_start and room != rm_end{
	
	if score > 0 {
		cy = camera_get_view_y(view_camera[0]);
		with obj_opaqueWall {
			if y > other.cy {
				instance_destroy();
			}
		}
		score--;
	}
	
	if(keyboard_check(vk_space)) and global.gas > 0 and !global.hasBullet{
		audio_sound_pitch(snd_background,0.5);
	}
	else{
		audio_sound_pitch(snd_background,1);
	}
}

if keyboard_check_pressed(vk_f1) {
	room_goto_next();
}