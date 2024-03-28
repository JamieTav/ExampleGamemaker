// movement

image_index = 1;

x += lengthdir_x(spd, image_angle);
y += lengthdir_y(spd, image_angle);

var _p = 64;

if !(point_in_rectangle(x, y, -_p, -_p, room_width + _p, room_height + _p))
{
	instance_destroy()
};

if (place_meeting(x,y, obj_enemy1))
{
	// find the closest enemy and knock them back
	instance_nearest(x,y,obj_enemy1).take_knockback(x,y, 1);
	
	instance_destroy()
}

if (place_meeting(x,y, obj_enemy2))
{
	// find the closest enemy and knock them back
	instance_nearest(x,y,obj_enemy2).take_knockback(x,y, 1);
	
	instance_destroy()
}

