if(global.game_state == STATES.PLAYING) {
	image_speed = 1;
}
else if(global.game_state == STATES.PAUSED) {
	image_speed = 0;
}

draw_self();