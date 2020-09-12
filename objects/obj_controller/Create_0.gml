enum STATES {
	PLAYING,
	PAUSED,
	LOST,
	WIN
};

global.game_state = STATES.PLAYING;
options = ["RESUME", "RESTART", "QUIT"];
opt_number = array_length(options);
menu_min = 0;
menu_index = 0;

randomize();

switch(room) {
	case rm_level_1:
		var enemy_x = 400;
		var enemy_y = 60;
		var number_enemies = 1;
		
		for(var i = 0; i < 8; i++) {
			var enemy = instance_create_layer(0, 0, "Instances", obj_enemy_ufo);
			enemy.x = enemy_x;
			enemy.y = enemy_y;
	
			if(number_enemies % 4 == 0) {
				enemy_x = 400;
				enemy_y += 60;
			}
			else if(number_enemies % 2 == 0) {
				enemy_x += 90;
			}
			else {
				enemy_x += 60
			}
	
			number_enemies++;
		}	
		break;
	case rm_level_2:
		var enemy_x = 350;
		var enemy_y = 60;
		var number_enemies = 1;
		
		for(var i = 0; i < 18; i++) {
			var enemy = instance_create_layer(0, 0, "Instances", obj_enemy_ufo);
			enemy.x = enemy_x;
			enemy.y = enemy_y;
	
			if(number_enemies % 6 == 0) {
				enemy_x = 350;
				enemy_y += 60;
			}
			else if(number_enemies % 2 == 0) {
				enemy_x += 90;
			}
			else {
				enemy_x += 60
			}
	
			number_enemies++;
		}	
		break;
	case rm_level_3:
		var enemy_x = 250;
		var enemy_y = 60;
		var number_enemies = 1;
		
		for(var i = 0; i < 27; i++) {
			var enemy = instance_create_layer(0, 0, "Instances", obj_enemy_ufo);
			enemy.x = enemy_x;
			enemy.y = enemy_y;
	
			if(number_enemies % 9 == 0) {
				enemy_x = 250;
				enemy_y += 60;
			}
			else if(number_enemies % 3 == 0) {
				enemy_x += 90;
			}
			else {
				enemy_x += 60
			}
	
			number_enemies++;
		}	
		break;
}