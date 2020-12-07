if (catsw1 == false && mouse_check_button_released(mb_left) && position_meeting(mouse_x, mouse_y, bush)){
	global.catsw1 = true;
	global.catNum++;
}