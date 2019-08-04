/// @description Insert description here
// You can write your code in this editor
if global.gas > 0 {
	global.gas -= 0.1;
	if place_meeting(x+hspeed, y, obj_wall) and place_meeting(x, y + vspeed, obj_wall){
		hspeed = -hspeed;
		vspeed = -vspeed;
	}
	else {
		if place_meeting(x + hspeed, y, obj_wall) {
			hspeed = -hspeed;
		}
		if place_meeting(x, y + vspeed, obj_wall) {
			vspeed = -vspeed;
		}
	}

	if keyboard_check(vk_space) {
		slowmotion = true;
		speed = topspeed / 5;
	}
	else {
		slowmotion = false;
		speed = topspeed;
	}

	if slowmotion {
		global.gas -= 0.4
		image_speed = 0.25;
		mouse_angle = point_direction(x, y, mouse_x, mouse_y); 
		dd = angle_difference(direction, mouse_angle);
		direction -= min(abs(dd), 3) * sign(dd);
	}
	else {
		image_speed = 1;
	}
	image_angle = direction;
}

else {
	speed = 0;
	sprite_index = spr_bulletDone;
	slowmotion = false;
	global.gas = 0;
}

