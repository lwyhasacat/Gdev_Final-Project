if (catsw3 == false && global.catspr == true && mouse_check_button_released(mb_left) && position_meeting(mouse_x, mouse_y, obj_cat3)){
	global.catsw3 = true;
	global.catNum++;
}