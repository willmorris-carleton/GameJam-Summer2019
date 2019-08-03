/// @description Insert description here
// You can write your code in this editor
cx = camera_get_view_x(view_camera[0]);
cy = camera_get_view_y(view_camera[0]);
cw = camera_get_view_width(view_camera[0]);
ch = camera_get_view_height(view_camera[0]);

bx = 385;
by = 640;
bw = cw - 2*bx;
bh = 50;
col = make_colour_rgb(random(255), random(255), random(255));

draw_rectangle_colour(cx + bx, cy + by, cx + bx + bw, cy + by + bh, c_gray, c_gray, c_gray, c_gray, false);
draw_rectangle_colour(cx + bx, cy + by, (cx + bx)+ bw*(global.gas/100), cy + by + bh, col, col, col, col, false);