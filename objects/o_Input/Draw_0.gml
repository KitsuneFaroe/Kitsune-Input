if(array_length(global.gamepads) <= 0) return;
var cx = x, cy = y, _radius = 100, _pad = global.gamepads[0];
draw_circle(cx, cy, _radius, true)
draw_set_colour(c_red)
draw_circle(cx + gamepad_axis_value(_pad, gp_axislh)* _radius, cy + gamepad_axis_value(_pad, gp_axislv)*_radius, _radius * 0.15, false)
draw_set_colour(c_white)

cx += _radius *2.1
draw_circle(cx, cy, _radius, true)
draw_set_colour(c_red)
draw_circle(cx + gamepad_axis_value(_pad, gp_axisrh)* _radius, cy + gamepad_axis_value(_pad, gp_axisrv)*_radius, _radius * 0.15, false)
draw_set_colour(c_white)