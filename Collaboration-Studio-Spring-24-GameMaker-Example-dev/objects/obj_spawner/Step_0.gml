/// spawn things
if (triggered)
{
	//check the list for enemies that are ready to spawn and if they are at the right wave/time spawn them
	for (var i = 0; i < ds_list_size(waves); i++)
	{
		var next = ds_list_find_value(waves,i)
		if (next[_WAVE] == current_wave) && (next[_DELAY] == timer)
		{
			var spawnpoint = next[_SPAWN];
			instance_create_layer(spawn[spawnpoint,0],spawn[spawnpoint,1],"Enemy",next[_TYPE]);
		}
	}
	
	//increase timer
	timer++;
	
	//next wave or end spawner when all enemies have died
	if (remaining[current_wave] <= 0)
	{
		if (current_wave == total_waves)
		{
			with (obj_doors) closed = false;
			instance_destroy();
		}
		else
		{
			current_wave++;
			timer = 0;
		}
	}
}


