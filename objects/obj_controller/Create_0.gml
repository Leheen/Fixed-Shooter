enum states {
	playing,
	paused,
	lost
};
global.game_state = states.playing;
score = 0;
options = ["RESUME", "RESTART", "QUIT"];
opt_number = array_length(options);
menu_min = 0;
menu_index = 0;

randomize();

switch(room) {
	case rm_level_1:
		var enemy_x = 280;
		var enemy_y = 60;
		var number_enemies = 1;
		
		for(var i = 0; i < 27; i++) {
			var enemy = instance_create_layer(0, 0, "Instances", obj_enemy_ufo);
			enemy.x = enemy_x;
			enemy.y = enemy_y;
	
			if(number_enemies % 9 == 0) {
				enemy_x = 280;
				enemy_y += 60;
			}
			else {
				enemy_x += 60
			}
	
			number_enemies++;
		}
		break;
}