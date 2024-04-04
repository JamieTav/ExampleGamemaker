/// variables
hp = 3;
can_take_damage = true;
movement_speed = 1.5;
knockback_force_x = 0;
knockback_force_y = 0;
recover_speed = 1;

function take_knockback(_in_x, _in_y, _multiplier)
{
	knockback_force_x = x -_in_x
	knockback_force_y = y -_in_y
	
	knockback_force_x *= _multiplier
	knockback_force_y *= _multiplier
	
}

function take_damage(_dmg)
{
		hp -= _dmg;
}