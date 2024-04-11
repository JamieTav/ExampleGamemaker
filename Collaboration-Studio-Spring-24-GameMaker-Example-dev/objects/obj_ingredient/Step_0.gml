// if we contact the player, add our ingredient to their holding
if (place_meeting(x,y,obj_cook) && keyboard_check_pressed(vk_space))
{
	var i = array_length(global.player.holding_ingredients)
	global.player.holding_ingredients[i] = ingredient_string;
	
	show_debug_message("held ingredients:")
	// loop through the player's holding ingredients and write them all to the console
	for (j = 0; j < array_length(global.player.holding_ingredients); j++)
	{
		show_debug_message(global.player.holding_ingredients[j])
	}
	
	if (ingredient_string = "fries")
		{
			instance_create_layer(x, y, "Instance_1", obj_ing_fries_frozen)
		}
}