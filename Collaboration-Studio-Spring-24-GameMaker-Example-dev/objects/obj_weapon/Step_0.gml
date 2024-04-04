/// movement and shooting

// set this position to the shooter
x = global.shooter_position_x; 
y = global.shooter_position_y;

#region reset angle and position

sprite_index = spr_weapon

//if rotated to left flip slingshot

if mouse_x > x image_yscale = 1;
else image_yscale = -1;

//lerp angle to mouse and knockback to 0
mouse_angle = point_direction(x, y, mouse_x, mouse_y);

knockback_angle = -mouse_angle;

image_angle = mouse_angle;

// lerp position

x = lerp(x, ox, 0.05);
y = lerp(y, oy, 0.05);

#endregion

#region shooting

//change condition for full auto

var _shoot = gun.fullauto ? mouse_check_button(mb_left) : mouse_check_button_pressed(mb_left);
var _ammo = gun.ammo[bullet_index];

if (current_ammo > 0 && has_ammo)
{
	if canshoot > 0 canshoot--;
	else if _shoot
	{
		//reset firerate
		canshoot = _ammo.firerate;
		
		//lerp firerate to end firerate while shooting
		
		_ammo.firerate = lerp(
			_ammo.firerate,
			_ammo.rate_end,
			_ammo.rate_mult);
			
		Shoot();
		
		var _delay = gun.burst_delay;
		repeat (gun.burst_number - 1)
		{
			call_later(_delay, time_source_units_frames, Shoot);
			_delay += gun.burst_delay;
		}
	}
}

if !mouse_check_button(mb_left)
{
	_ammo.firerate = lerp(
		_ammo.firerate,
		_ammo.rate_start,
		_ammo.rate_mult);
}

//decrease ammo
if mouse_check_button_pressed(mb_left)
{
	current_ammo -= 1;
}
if (current_ammo == 0)
{
	has_ammo = false;
}

//pick up ammo
if (place_meeting(obj_shooter.x, obj_shooter.y, obj_ammo_ph))
{
	instance_destroy(obj_ammo_ph);
	current_ammo += 2;
	has_ammo = true;
}





