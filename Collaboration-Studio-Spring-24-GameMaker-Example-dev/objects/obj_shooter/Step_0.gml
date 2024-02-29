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

if (place_meeting(x, y, obj_enemy1))
{
	health -= 1
}

if (health == 0)
{
	game_end()
}
