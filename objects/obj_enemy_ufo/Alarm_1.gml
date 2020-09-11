/// @description Shoot randomly
if(global.game_state == states.playing) {
	var bullet = instance_create_layer(x, y, "Instances", obj_bullet_enemy);
	bullet.atk = atk;
	bullet.direction = point_direction(x, y, x, y+1);

	alarm[1] = room_speed * random_range(0.5, 5);
}