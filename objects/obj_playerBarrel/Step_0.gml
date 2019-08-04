/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player) {
	with obj_player {
		other.x = x;
		other.y = y;
	}
}
image_angle = point_direction(x, y, mouse_x, mouse_y) - 90;