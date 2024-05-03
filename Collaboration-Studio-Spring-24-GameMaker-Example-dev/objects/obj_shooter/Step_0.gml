// basic movement
// move up & down
if (keyboard_check(vk_up))
{
	if (!place_meeting(x,y-movespeed,obj_wall))
		y -= movespeed;	
}
if (keyboard_check(vk_down))
{
	if (!place_meeting(x,y+movespeed,obj_wall))
		y += movespeed;
}

// move right & left
if (keyboard_check(vk_right))
{	
	if (!place_meeting(x+movespeed,y,obj_wall))
		x += movespeed;
}
if (keyboard_check(vk_left))
{
	if (!place_meeting(x-movespeed,y,obj_wall))
		x -= movespeed;
}

if (place_meeting(x, y, obj_enemy_parent) && can_take_damage)
{
	show_debug_message("player took damage!");
	global.shooter_hp -= 1
	
	// start the alarm
	can_take_damage = false;
	alarm_set(0,60)
}

if (global.shooter_hp == 0)
{
	instance_destroy(self);
}

if keyboard_check_pressed(ord("R")) game_restart();

// set global position for reference
global.shooter_position_x = x;
global.shooter_position_y = y;