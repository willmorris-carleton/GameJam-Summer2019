/// @description Insert description here
// You can write your code in this editor
if room != rm_start {
	global.grid = mp_grid_create(0, 0, room_width / 64, room_height /64, 64, 64);
	mp_grid_add_instances(global.grid, obj_wall, false);

	global.gas = 100;
}