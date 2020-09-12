if(global.game_state == STATES.PLAYING && can_shoot) {
	can_shoot = false;
	var bullet = instance_create_layer(x, y, "Instances", obj_bullet_player);
	bullet.atk = atk;
	bullet.direction = point_direction(x, y, x, y-1)
	
	alarm[0] = shoot_delay;
}
