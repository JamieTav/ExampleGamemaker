// draw the healthbar
draw_set_color(c_white);
// draw background
draw_rectangle(1220, 1220, 1796, 1250, false)

var hp_g = global.kitchen_hp / global.kitchen_max_hp

// make sure to lock the value, so that it cannot go below zero
if (hp_g <= 0)
	hp_g = 0;

// the width of our bar
var w = ((hp_g) * 512) + 64;

// if we are at 0 then set it to the starting width
if (w == 0)
	w = 64

// draw health
draw_set_color(merge_color(c_red, c_lime,hp_g));
draw_rectangle(64, 64, w, 30, false)
