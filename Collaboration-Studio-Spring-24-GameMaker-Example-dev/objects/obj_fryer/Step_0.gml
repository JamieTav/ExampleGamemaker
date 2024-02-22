// if the player is over us then cook
if (place_meeting(x,y,obj_player) && keyboard_check_pressed(vk_space))
{
	with (global.player)
	{
		attempt_cooking()
	}
}