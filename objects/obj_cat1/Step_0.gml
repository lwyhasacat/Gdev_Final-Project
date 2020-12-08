if (global.catsw1 == false && global.catspr == true && mouse_check_button_released(mb_left) && position_meeting(mouse_x, mouse_y, obj_cat1)){
	global.catsw1 = true;
	global.catNum++;
}