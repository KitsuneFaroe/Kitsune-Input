
x += input_axis_check(Input.mov_x)*2
y += input_axis_check(Input.mov_y)*2

if(input_check(Input.a)) pressed = true;
else pressed = false;

if(input_check_pressed(Input.b))
toggled = !toggled;