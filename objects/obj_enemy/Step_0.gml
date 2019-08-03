/// @description Insert description here
// You can write your code in this editor
playerx = pointer_null;
playery = pointer_null;
with obj_player {
	other.playerx = x;
	other.playery = y;
}
//If can see player
if !collision_line(x,y,playerx, playery, obj_wall, false, false) {
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

	