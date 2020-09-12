/// @description Paused game
if(global.game_state == STATES.PLAYING) {
	global.game_state = STATES.PAUSED;
}
else if(global.game_state == STATES.PAUSED) {
	global.game_state = STATES.PLAYING;
}