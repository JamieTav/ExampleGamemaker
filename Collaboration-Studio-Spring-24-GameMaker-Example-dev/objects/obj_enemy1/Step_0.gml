/// damage

if (place_meeting(x,y,obj_bullet))
{
	health -= 1;	
}

if (health == 0)
{
	instance_destroy(id)
}


