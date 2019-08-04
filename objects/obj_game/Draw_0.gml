/// @description Insert description here
// You can write your code in this editor
cx = camera_get_view_x(view_camera[0]);
cy = camera_get_view_y(view_camera[0]);
cw = camera_get_view_width(view_camera[0]);
ch = camera_get_view_height(view_camera[0]);

if !colChosen {
	col = choose(c_red, c_aqua, c_lime, c_purple, c_yellow, c_teal); //make_colour_rgb(random(255), random(255), random(255));
	alarm[0] = room_speed / 15;
	colChosen = true;
}

if room != rm_start and room != rm_end{
	bx = 385;
	by = 32;
	bw = cw - 2*bx;
	bh = 50;

	draw_rectangle_colour(cx + bx - 10, cy + by - 10, cx + bx + bw +10, cy + by + bh +10, c_silver, c_silver, c_silver, c_silver, false);
	draw_rectangle_colour(cx + bx, cy + by, (cx + bx)+ bw*(global.gas/100), cy + by + bh, col, col, col, col, false);
}

else if room != rm_end{
	draw_set_font(fnt_title);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_color(room_width/2, room_height/2, "One PUMP Chump\n\nPress ENTER To start", c_white, c_white, c_white, c_white, 1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text_color(420, 336, "PUMP", col, col, col, col, 1);
	show_debug_message(string(mouse_x)+string(mouse_y));
	
}/// @description Insert description here
// You can write your code in this editor
