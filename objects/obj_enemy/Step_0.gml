/// @description Insert description here
// You can write your code in this editor
playerx = pointer_null;
playery = pointer_null;

if instance_exists(obj_player) {
	with obj_player {
		other.playerx = x;
		other.playery = y;
	}
	//If can see player
	if !collision_line(x,y,playerx, playery, obj_wall, false, false) and !collision_line(x,y,playerx, playery, obj_opaqueWall, false, false){
		if !alert {
			audio_play_sound(snd_alert, 12, false)
		}
		alert = true;
		alerttime = current_time;
		sprite_index = spr_enemyAlert;
		path = path_add();
		if mp_grid_path(global.grid, path, x, y, playerx, playery, true) {
			path_start(path, espeed, path_action_stop, true);
		}
	}

	if alert and (current_time > alerttime + timeout) and path_position = 1{
		other.sprite_index = spr_enemy;
		alert = false;
	}
}

	