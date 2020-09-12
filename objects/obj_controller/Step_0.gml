if(!instance_exists(obj_enemy_ufo)) {
	if room_exists(room_next(room)) {
		room_goto_next();
	}
	else {
		global.game_state = STATES.WIN;
	}
}
else {
	for(var i = 0; i < instance_number(obj_enemy_ufo); i++) {
		var enemy = instance_find(obj_enemy_ufo, i);
		if(enemy.y >= room_height) {
			global.game_state = STATES.LOST;
		}
	}
}

if(global.game_state != STATES.PLAYING) {
	if(global.game_state == STATES.PAUSED) {
		menu_min = 0;
	}
	else {
		menu_min = 1;
	}
	
	var move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	menu_index += move;
	if(menu_index < menu_min) {
		menu_index = opt_number - 1;
	}
	else if(menu_index > opt_number - 1) {
		menu_index = menu_min;
	}
}