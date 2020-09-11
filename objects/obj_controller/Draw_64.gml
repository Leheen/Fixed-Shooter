draw_set_font(fnt_score);
draw_set_color(c_white);
draw_text(30, 30, "SCORE: " + string(score));

switch(global.game_state) {
	case states.paused:
		draw_text(900, 30, "PAUSE");
		break;
	case states.lost:
		draw_text(850, 30, "GAME OVER");
		break;
}

if(global.game_state != states.playing) {
	draw_set_font(fnt_message);
	for(var i = menu_min; i < opt_number; i++) {
		if(menu_index == i) {
			draw_set_color(c_white);
		}
		else {
			draw_set_color(c_dkgray);
		}
		draw_text(850, 600 + 30 * i, options[i]);
	}
}

if(instance_exists(obj_player)) {
	var x_hp = 30;
	repeat(obj_player.hp) {
		draw_sprite(spr_life, 0,  x_hp, 750);
		x_hp += 30;
	}
}