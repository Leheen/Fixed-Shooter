if(x <= start_x || x >= end_x) {
	dir *= -1;
}

x += spd * dir;

if(hp <= 0) {
	instance_destroy();
}

if(global.game_state == states.playing && !alarm[1]) {
	alarm[1] = room_speed * random_range(0.5, 5);
}