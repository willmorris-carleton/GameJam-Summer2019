/// @description Insert description here
// You can write your code in this editor
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));

var hmove = left - right;
var vmove = up - down;

//If going right
if hmove < 0 {
	if place_free(x+speedm, y) {
		x += speedm
	}
	else {
		while place_free(x+1, y) {
			x += 1	
		}
	}
}
else if hmove > 0 {
	if place_free(x - speedm, y) {
		x -= speedm
	}
	else {
		while place_free(x-1, y) {
			x -= 1;	
		}
	}
}
//Down
cx = camera_get_view_x(view_camera[0]);
cy = camera_get_view_y(view_camera[0]);
ch = camera_get_view_height(view_camera[0]);

if vmove < 0 {
	if y >= (cy + (ch)/8) {
		camera_set_view_pos(view_camera[0], cx, cy+speedm);
	}
	if place_free(x, y+speedm) {
		y += speedm
	}
	else {
		while place_free(x, y+1) {
			y += 1	
		}
	}
}
else if vmove > 0 {
	if y <= (cy + (ch*7)/8) {
		camera_set_view_pos(view_camera[0], cx, cy-speedm);
	}
	if place_free(x, y-speedm) {
		y -= speedm
	} else {
		while place_free(x, y-1) {
			y -= 1	
		}
	}
}

//Spawn Bullet
if mouse_check_button_pressed(mb_left) and global.hasBullet{
	global.hasBullet = false;
	audio_play_sound(snd_Shot, 11, false);
	fire_direction = point_direction(x, y, mouse_x, mouse_y);
	var bullet = instance_create_layer(x, y, "Instances", obj_bullet);
	
	with bullet {
		direction = other.fire_direction;
	}
}
