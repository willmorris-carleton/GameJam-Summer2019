if room == rm_2 {
	if score > 0 {
		cy = camera_get_view_y(view_camera[0]);
		with obj_opaqueWall {
			if y > other.cy {
				instance_destroy();
			}
		}
		score--;
	}
}
