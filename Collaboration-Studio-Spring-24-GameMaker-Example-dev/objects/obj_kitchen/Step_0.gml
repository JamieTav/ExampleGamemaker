if (place_meeting(x,y,obj_enemy_parent) && can_take_damage)
{
	global.kitchen_hp -= 1;
	can_take_damage = false;
	alarm_set(0,60)
}

if (global.kitchen_hp == 0)
{
	instance_destroy(obj_cook)
}


