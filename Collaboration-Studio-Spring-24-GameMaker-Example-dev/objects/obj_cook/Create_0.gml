// movement speed
movespeed = 5

// global player reference
global.player = self;

holding_ingredients = []
holding_objects = []

plain_burger = ["bread", "cooked mean"]
cheese_burger = ["bread", "cooked meat", "cheese"]
mega_burger = ["bread", "cooked meat", "lettuce", "tomato"]
regular_fries = ["cooked fries"]
cheese_fries = ["cooked fries", "cheese"]
loaded_fries = ["cooked fries", "cheese", "cooked meat"]
plain_salad = ["lettuce", "tomato"]
cheese_salad = ["lettuce", "tomato", "cheese"]
loaded_salad = ["lettuce", "tomato", "cheese", "cooked meat"]
plain_icecream = ["cone", "icecream"]
sprinkles_icecream = ["cone", "icecream", "sprinkles"]
bs_icecream = ["cone", "icecream", "butterscotch"]

recipes = [plain_burger, cheese_burger, mega_burger, regular_fries, cheese_fries, loaded_fries, plain_salad, cheese_salad, loaded_salad, plain_icecream, sprinkles_icecream, bs_icecream]

recipe_names = ["hamburger", "cheeseburger", "mega burger", "plain fries", "cheese fries", "loaded fries", "plain salad", "cheese salad", "loaded salad", "icecream", "sprinkles icecream", "butterscotch icecream"]

// the amount of recipes we have
recipe_count = 12;

// cooking function
function attempt_recipe()
{	
	// compares our held ingredients to all recipes
	// show_debug_message("attempting cooking");
	// for ever recipe, compare our held ingredients to that recipe
	
	for (i = 0; i < recipe_count; i++)
	{
		show_debug_message("checking: " + recipe_names[i])
		
		// sort both arrays so that they can be compared
		array_sort(recipes[i], true)
		
		// sort our held ingredients
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
			
			//create ammo
			instance_create_layer(780,y, "Instances_1", obj_ammo_ph)
			
			clear_held_ingredients()
			return;
		}
	}	
	
	// if you reach this point, nothing has been made!
	show_debug_message("nothing was made!");
	clear_held_ingredients()
}

function attempt_frying()
{
	if (array_contains(holding_ingredients, "frozen fries"))
		{
			//array_delete(holding_ingredients, "frozen fries",)
			array_insert(holding_ingredients, 0, "cooked fries")
			draw_text(1538, 350, "fries cooked!")
			
			show_debug_message("done");
		}
			
}

function attempt_cooking()
{
	if (array_contains(holding_ingredients, "frozen meat"))
		{
			//array_delete(holding_ingredients, "frozen meat",)
			array_insert(holding_ingredients, 0, "cooked meat")
			draw_text(1538, 350, "meat cooked!")
		}
			
}
	

function clear_held_ingredients()
{
	// destroy all the objects in the held ingredients list\
	for (i = 0; i < array_length(holding_objects); i++)
	{
		instance_destroy(holding_objects[i]);
	}
	
	// then clear held ingredients
	holding_ingredients = [];
}
