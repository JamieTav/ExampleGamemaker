///variables set
//amount of enemies in a wave
total_enemies = 6;
//enemies available to select
enemy_object = [obj_enemy1, obj_enemy2];
//spawn area range
bounds_tlx = -455;
bounds_tx = 0;
bounds_try = 0;
bounds_by = 1080;
//time between enemy spawns
spawn_interval_min = 0.1;
spawn_interval_max = 1;
//is it the first wave
first_wave = false;
//set current enemies
current_enemy_count = 6;

//function to spawn enemies
function spawn_enemy()
{
	show_debug_message("spawming enemy")
	//which enemy is spawning
	var _e = enemy_object[random_range(0,2)];
	//pick x & y of spawnpoint
	var _cx = random_range(bounds_tlx,bounds_tx);
	var _cy = random_range(bounds_try,bounds_by);
	//place enemy in enviornment
	instance_create_depth(_cx,_cy,depth,_e);
	//reduce enemy count
	current_enemy_count -= 1;
}

//function for spawning the enemy during the wave
function spawn_interval()
{
	//set alarm to random interval in between spawns
	if (current_enemy_count > 0)
	{
		show_debug_message(current_enemy_count);
		alarm_set(0, random_range(spawn_interval_min,spawn_interval_max) * 60 );
	}
	spawn_enemy();
	
	//end the wave and start a new one
	if (current_enemy_count <= 0)
	{
		//check if its the first wave
		if (!first_wave)
		{
			show_debug_message("new wave");
			alarm_set(1, 30 * 60);
			total_enemies += 4;
		}
		
		if (first_wave)
		{
			show_debug_message("first wave");
			alarm_set(1, 3);
		}
		current_enemy_count = total_enemies;
	}
	
}


