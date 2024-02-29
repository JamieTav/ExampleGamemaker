function Shoot()
{
	with obj_weapon
	{
		//play sound at random gain + pitch
		
		//audio_play_sound(*fire sound*, 10, false, random_range(0.8, 1), 0, random_range(0.8, 1));
		
		//calculate distance from centre to tip weapon
		var _dist = sprite_get_width(spr_weapon) - sprite_get_xoffset(spr_weapon);
		
		for(var i = 0; i < gun.spread_number; i++;)
		{
			var _angle = image_angle + (i * gun.spread_angle) - ((gun.spread_number - 1) * (gun.spread_angle / 2));

			
			instance_create_depth( 
				x + lengthdir_x(_dist, image_angle),
				y + lengthdir_y(_dist, image_angle),
				depth - 1,
				obj_bullet,
				{
					image_angle: _angle + random_range(-gun.inaccuracy, gun.inaccuracy),
					sprite_index: gun.ammo[bullet_index].sprite,
					spd: gun.ammo[bullet_index].spd
				}
			);
		}
		
		//gun kick and knockback
		x -= gun.kickback * image_yscale
		
		//Iterate through ammo types
		if bullet_index < array_length(gun.ammo) -1 bullet_index++;
		else bullet_index = 0;
	}
}