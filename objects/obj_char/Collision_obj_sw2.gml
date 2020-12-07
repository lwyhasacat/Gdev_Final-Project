//room change
if (keyboard_check(vk_down) && keyboard_check(vk_enter) && room == room2){
	room_goto(room1);
	x = 800;
	y = 920;
}