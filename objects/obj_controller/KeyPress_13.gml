/// @description Choose option in the menu
if(global.game_state != states.playing) {
	switch(menu_index) {
		case 0:
			global.game_state = states.playing;
			break;
		case 1:
			game_restart();
			break;
		case 2:
			game_end();
			break;
	}
}