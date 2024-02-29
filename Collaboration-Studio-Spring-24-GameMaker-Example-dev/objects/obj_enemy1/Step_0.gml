/// damage

if (place_meeting(x,y,obj_bullet))
{
	hp -= 1;	
}

if (hp == 0)
{
	instance_destroy(id)
}


