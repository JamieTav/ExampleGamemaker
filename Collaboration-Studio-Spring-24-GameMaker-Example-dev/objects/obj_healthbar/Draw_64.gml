// draw the healthbar
draw_set_color(c_white);
// draw background
draw_rectangle(64, 64, 512, 128, false)

// draw health
draw_set_color(merge_color(c_red, c_lime, hp/max_hp));
draw_rectangle(64, 64,(hp/max_hp) * 512, 128, false)

show_debug_message((hp/max_hp) * 512)