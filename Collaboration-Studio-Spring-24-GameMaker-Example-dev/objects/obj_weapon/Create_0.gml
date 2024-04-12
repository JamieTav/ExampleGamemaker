// variables

//does the shooter even exist lmao?
shooter_alive = true;
//direction from gun to mouse
mouse_angle = 0;

//angle of knockback
knockback_angle = 0;

//original x position
ox = x;

//original y position
oy = y;

//bullet
bullet =
{
	//bullet sprite
	sprite: spr_burger,
	//speed of bullet movement
	spd: 20,
	//initial firerate
	rate_start: 20,
	//max firerate
	rate_end: 20,
	//multiplication in firerate per bullet
	rate_mult: 0,
	//current firerate
	firerate: 20,
	//bullet damage
	dmg: 1
};

//gun
gun =
{
	//sprite
	sprite: spr_weapon,
	//array of ammo structs
	ammo: [bullet],
	//random bullet ammo inaccuracy
	inaccuracy: 0,
	//kickback to position and angle
	kickback: 2,
	//shooting sound effect to plan
	sound: snd_shoot,
	//number of bullets in spread
	spread_number: 1,
	//angle between each bullet in spread
	spread_angle: 15,
	//hold shoot true false
	fullauto: false,
	//number of bullets in burst
	burst_number: 1,
	//delay between bullets in burst
	burst_delay: 0
};

//shooting timer
canshoot = 0;
//current bullet
bullet_index = 0;
//current ammo ammount
current_ammo = 10;
has_ammo = true;
