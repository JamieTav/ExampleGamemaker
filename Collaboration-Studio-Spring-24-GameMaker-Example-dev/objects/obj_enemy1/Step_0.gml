/// damage

var inst = collision_rectangle(0, 0, 2000, 1080, obj_attackable, false, false);

if (inst != noone)
{
	speed = 0;
	
	if (knockback_force_x == 0 && knockback_force_y == 0)
		move_towards_point(obj_attackable.x, obj_attackable.y, movement_speed)
}


if (place_meeting(x,y,obj_bullet) && can_take_damage)
{
	hp -= 1;
	can_take_damage = false;
	alarm_set(0,10)
}

if (hp == 0 || place_meeting(x,y,obj_kitchen))
{
	instance_destroy(id)
}



