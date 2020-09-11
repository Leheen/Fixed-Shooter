hp = 1;
atk = 1;
spd = 1;

dir = 1;
start_x = x - 25;
end_x = x + 25;

move_down_speed = room_speed * 5;
alarm[0] = move_down_speed;

alarm[1] = room_speed * random_range(0.5, 5);
