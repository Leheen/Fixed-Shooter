/// @description Paused game
if(global.game_state == states.playing) {
	global.game_state = states.paused;
}
else if(global.game_state == states.paused) {
	global.game_state = states.playing;
}