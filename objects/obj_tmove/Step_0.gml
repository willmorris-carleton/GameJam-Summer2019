/// @description Insert description here
// You can write your code in this editor
if keyboard_check(ord("W")) {
	sprite_index = spr_tmoveW;	
}
else if keyboard_check(ord("A")) {
	sprite_index = spr_tmoveA;	
}
else if keyboard_check(ord("S")) {
	sprite_index = spr_tmoveS;	
}
else if keyboard_check(ord("D")) {
	sprite_index = spr_tmoveD;	
}
else {
	sprite_index = spr_tmove;
}