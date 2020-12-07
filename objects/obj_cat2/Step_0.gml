if (catsw2 == false && mouse_check_button_released(mb_left) && position_meeting(mouse_x, mouse_y, obj_cat2)){
	global.catsw2 = true;
	global.catNum++;
}