/// damage

x = x+knockback_force_x
y = y+knockback_force_y

var inst = collision_rectangle(0, 0, 2000, 1080, obj_attackable, false, false);

if (inst != noone)
{
	speed = 0;

	if (knockback_force_x == 0 && knockback_force_y == 0)
	{
		move_towards_point(obj_kitchen.x, obj_kitchen.y, movement_speed)
	}
}

//reduce knockback force
if (knockback_force_x > 0)
{
	knockback_force_x -= recover_speed;
}
if (knockback_force_y > 0)
{
	knockback_force_y -= recover_speed;
}
if (knockback_force_y < 0)
{
	knockback_force_y = 0;
}
if (knockback_force_x < 0)
{
	knockback_force_x = 0;
}



if (place_meeting(x,y,obj_bullet)) //&& can_take_damage)
{
	hp -= 1;
	take_knockback(obj_bullet.x, obj_bullet.y, 1);
	//can_take_damage = false;
	alarm_set(0,10)
}

if (hp == 0 || place_meeting(x,y,obj_kitchen))
{
	instance_destroy(id)
}


