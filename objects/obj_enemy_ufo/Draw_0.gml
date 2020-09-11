if(global.game_state == states.playing) {
	image_speed = 1;
}
else if(global.game_state == states.paused) {
	image_speed = 0;
}

draw_self();