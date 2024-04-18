alarm_set(1, 5 * 60);
if(instance_exists(obj_enemy_parent))
{
	enemies_alive = true;
}
else
{
	enemies_alive = false;
}

if (!enemies_alive)
{
	alarm_set(0, 60 * 60);
	spawn_interval();
}