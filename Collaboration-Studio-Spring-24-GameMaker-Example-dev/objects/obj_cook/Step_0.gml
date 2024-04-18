// basic movement
// move up & down
if (keyboard_check(ord("W")))
{
	if (!place_meeting(x,y-movespeed,obj_wall))
		y -= movespeed;	
}
if (keyboard_check(ord("S")))
{
	if (!place_meeting(x,y+movespeed,obj_wall))
		y += movespeed;
}

// move right & left
if (keyboard_check(ord("D")))
{	
	if (!place_meeting(x+movespeed,y,obj_wall))
		x += movespeed;
}
if (keyboard_check(ord("A")))
{
	if (!place_meeting(x-movespeed,y,obj_wall))
		x -= movespeed;
}

// when we touch a breakable object, find it and break it
if (place_meeting(x,y,obj_breakable))
{
	instance_destroy(instance_place(x,y,obj_breakable))
}

//pick up items
if (place_meeting(x,y,inst_21A8E7B6) && keyboard_check_pressed(vk_space))
{
	array_insert(holding_objects, array_length(holding_objects),instance_create_layer(x,y, "Instances", obj_ing_fries_frozen));
}
if (place_meeting(x,y,inst_42B61DDE) && keyboard_check_pressed(vk_space))
{
	array_insert(holding_objects, array_length(holding_objects),instance_create_layer(x,y, "Instances", obj_ing_cheese));
}
if (place_meeting(x,y,inst_68B9B507) && keyboard_check_pressed(vk_space))
{
	array_insert(holding_objects, array_length(holding_objects),instance_create_layer(x,y, "Instances", obj_ing_bread));
}
if (place_meeting(x,y,inst_5BD3EA56) && keyboard_check_pressed(vk_space))
{
	array_insert(holding_objects, array_length(holding_objects),instance_create_layer(x,y, "Instances", obj_ing_tomato));
}
if (place_meeting(x,y,inst_2E9CA95F) && keyboard_check_pressed(vk_space))
{
	array_insert(holding_objects, array_length(holding_objects),instance_create_layer(x,y, "Instances", obj_ing_lettuce));
}
if (place_meeting(x,y,inst_7B747F44) && keyboard_check_pressed(vk_space))
{
	array_insert(holding_objects, array_length(holding_objects),instance_create_layer(x,y, "Instances", obj_ing_frozen_meat));
}
if (place_meeting(x,y,inst_9057E36) && keyboard_check_pressed(vk_space))
{
	array_insert(holding_objects, array_length(holding_objects),instance_create_layer(x,y, "Instances", obj_ing_ic));
}
if (place_meeting(x,y,inst_50657285) && keyboard_check_pressed(vk_space))
{
	array_insert(holding_objects, array_length(holding_objects),instance_create_layer(x,y, "Instances", obj_ing_sprinkles));
}
if (place_meeting(x,y,inst_5745C0E4) && keyboard_check_pressed(vk_space))
{
	array_insert(holding_objects, array_length(holding_objects),instance_create_layer(x,y, "Instances", obj_ing_bscotch));
}
