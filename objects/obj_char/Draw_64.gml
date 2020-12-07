draw_set_font(fontcat);
draw_set_color(c_black);

if(610 <= x && x <= 1024 && room == room1){
	draw_sprite_ext(spr_dialogue, -1, 1050, 80, 0.55, 0.55, 0, c_white, 0.8);
	draw_text(850, 70, "Press up and enter to go inside");
}

if(950 <= x && x <= 1450 && room == room2){
	//check: if this text was shown before
	if(global.swCat == false){
		draw_sprite_ext(spr_dialogue, -1, 1050, 80, 0.75, 0.75, 0, c_white, 0.8);
		draw_text(790, 45, "Press up and enter to talk to this person");
		draw_text(825, 80, "Press space to exit conversation");
		draw_text(815, 115, "Press down and enter to exit room");
	}
	if (keyboard_check(vk_up) && keyboard_check(vk_enter) && global.swCat == false){
		global.swCat = true;
	}
	
	//conversation with this person
	if(global.swCat == true){
		draw_sprite_ext(spr_dialogue, -1, 620, 600, 1, 1, 0, c_white, 0.8);
		//if havent had the conversation
		draw_sprite(spr_person, 0, 1200, 530);
		draw_text(380, 560, "...Did you find my cats?");
		draw_text(380, 600, "They should be outside");
		draw_text(380, 640, "I can help you to find your cat later...");
		if(keyboard_check(vk_space)){
			global.swCat = false;
			global.catNum = 0;
			global.catsw1 = false;
			global.catsw2 = false;
			global.catsw3 = false;
			global.catsw4 = false;
			global.catspr = true;
		}
	}
}

if(global.catspr == true && room == room1){
	draw_set_font(fontcat);
	draw_set_color(c_black);
	draw_sprite_ext(spr_score, -1, 150, 60, 0.7, 0.7, 0, c_white, 0.7);
	draw_text(50, 70,"Cats found: " + string(global.catNum));
}

if(global.catNum == 4 && room == room2){
	//check: if this text was shown before
	if(global.swCat2 == false){
		draw_sprite_ext(spr_dialogue, -1, 1050, 80, 0.75, 0.75, 0, c_white, 0.8);
		draw_text(790, 45, "Press up and enter to talk to this person");
		draw_text(825, 80, "Press space to exit conversation");
		draw_text(815, 115, "Press down and enter to exit room");
	}
	if (keyboard_check(vk_up) && keyboard_check(vk_enter) && global.swCat2 == false){
		global.swCat2 = true;
	}
	
	//conversation with this person
	if(global.swCat2 == true){
		draw_sprite_ext(spr_dialogue, -1, 620, 600, 1, 1, 0, c_white, 0.8);
		//if havent had the conversation
		draw_sprite(spr_personAndCat, 0, 1200, 530);
		draw_text(380, 550, "You found my cats!");
		draw_text(380, 590, "Here you go!");
		draw_text(380, 630, "...Your cat was here an hour ago, actually.");
		draw_text(380, 670, "He is a nice cat.");
		//ofc my cat is the best cat
		
		if(keyboard_check(vk_space)){
			room_goto(endScreen);
			x = 0;
			y = 1000;
		}
	}
}

if(1450 <= x && x <= 2100 && room == room2){
	draw_sprite_ext(spr_exit, -1, 1050, 80, 0.5, 0.5, 0, c_white, 0.8);
	draw_text(1000, 80, "Exit");
}