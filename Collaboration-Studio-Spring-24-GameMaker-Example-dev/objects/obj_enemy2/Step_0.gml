/// damage

var inst = collision_rectangle(0, 0, 2000, 1080, obj_attackable, false, false);

if (inst != noone)
{
	move_towards_point(obj_kitchen.x, obj_kitchen.y, movement_speed)
}

if (place_meeting(x,y,obj_bullet) && can_take_damage)
{
	hp -= 1;
	take_knockback(obj_bullet.x, obj_bullet.y, 1);
	can_take_damage = false;
	alarm_set(0,10)
	x = x-15
}

if (hp == 0 || place_meeting(x,y,obj_kitchen))
{
	instance_destroy(id)
}


