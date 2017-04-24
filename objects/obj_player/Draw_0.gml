/// @description Draw guy and health bar
draw_self();

var bar_w = 4; // full width
var bar_h = -20;
var x_off = facing_right ? -15 : 15;
var y_off = -10;
var bar_x = x + x_off;
var bar_y = y + y_off;
var bar_vol = bar_h * (my_health / 100);
bar_vol = my_health < 0 ? 0 : bar_vol;

// Draw health bar fill
draw_set_color(c_green);
draw_rectangle(bar_x,bar_y + bar_vol, bar_x + bar_w, bar_y,false);

// Draw health bar outline
draw_set_color(c_white);
//draw_rectangle(bar_x, bar_y, bar_x + bar_w, bar_y + bar_h, true);