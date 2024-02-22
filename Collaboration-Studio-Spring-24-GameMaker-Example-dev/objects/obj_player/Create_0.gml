// movement speed
movespeed = 5

// global player reference
global.player = self;

holding_ingredients = []

fish_tacos_recipe = ["fish", "tortilla"]
chicken_tacos_recipe = ["chicken", "tortilla"]
spicy_chicken_tacos_recipe = ["chicken", "tortilla", "hot sauce"]
small_fries = ["fries"]
medium_fries = ["fries", "oil"]
large_fries = ["fries", "oil", "hot sauce"]

recipes = [fish_tacos_recipe, chicken_tacos_recipe, spicy_chicken_tacos_recipe, large_fries,  medium_fries, small_fries]

recipe_names = ["fish tacos", "chicken tacos", "spicy chicken tacos", "large fries", "medium fries", "small fries"]

// the amount of recipes we have
recipe_count = 6;

// cooking function
function attempt_cooking()
{
	// compares our held ingredients to all recipes
	// show_debug_message("attempting cooking");
	// for ever recipe, compare our held ingredients to that recipe
	
	for (i = 0; i < recipe_count; i++)
	{
		show_debug_message("checking: " + recipe_names[i])
		
		// sort both arrays so that they can be compared
		array_sort(recipes[i], true)
		
		array_sort(holding_ingredients, true)
		
		length = array_length(holding_ingredients)

		// loop through all the ingredients in a recipe
		match = true;
		if (array_length(holding_ingredients) > 0)
		for (j = 0; j < array_length(recipes[i]); j++)
		{		
			if (j >= array_length(holding_ingredients))
			{
				break;	
			}
			
			if (j < array_length(holding_ingredients))
			{
				show_debug_message(j);
				if (recipes[i][j] != holding_ingredients[j])
				{
					show_debug_message(recipes[i][j] + " is not " + holding_ingredients[j])
					match = false;
				}
			}
		}
		
		// if this is a match then we're good
		if (match)
		{
			// if we are at the end of a recipe then this recipe is good!
			show_debug_message("cooked: " + recipe_names[i]);
			// put cooking function here!
			
			clear_held_ingredients()
			return;
		}
	}	
	
	// if you reach this point, nothing has been made!
	show_debug_message("nothing was made!");
	clear_held_ingredients()
}

function clear_held_ingredients()
{
	// then clear held ingredients
	holding_ingredients = [];
}
