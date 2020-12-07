//movement control
var movespeed = 7;

if(keyboard_check(vk_left)){
	hspeed = movespeed * -1;
}
else if(keyboard_check(vk_right)){
	hspeed = movespeed;
}
else{
	hspeed = 0;
}

//sprite change
image_xscale = dir;
if (hspeed < 0){
	dir = 1;
}
if (hspeed > 0){
	dir = -1;
}

if (hspeed == 0){
	sprite_index = char_still;
}
else{
	sprite_index = char_walk;
}
if (keyboard_check(vk_up) && hspeed == 0){
	sprite_index = char_still_back;
}
if (keyboard_check(vk_down) && hspeed == 0){
	sprite_index = char_still_front;
}

//room change
if (keyboard_check(vk_down) && keyboard_check(vk_enter) && room == room2){
	room_goto(room1);
	x = 800;
	y = 920;
}