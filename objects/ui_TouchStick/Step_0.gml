var _w = sprite_width
var _h = sprite_height
var _x = x
var _y = y
if(area){
	_w = radius*2
	_h = radius*2
}


if(device_index == -1){
	var i = 0
	repeat(4){
		if(device_mouse_check_button_pressed(i, mb_left) and 
		position_meeting(device_mouse_x_to_gui(i), device_mouse_y_to_gui(i), self)){
			device_index = i;
			if(area){
				_x = device_mouse_x_to_gui(i)
				_y = device_mouse_y_to_gui(i)
			}
			break;
		}
		i++
	}
}else{
	if(device_mouse_check_button_released(device_index, mb_left)){
		device_index = -1;
		if(resets){
			val_x = 0;
			val_y = 0;
		}
	}
}

if(device_index != -1){
	val_x = (device_mouse_x_to_gui(device_index)-_x)*2/_w
	val_y = (device_mouse_y_to_gui(device_index)-_y)*2/_h
	
	val_x = clamp(val_x/radius_ratio, -1.,1.)
	val_y = clamp(val_y/radius_ratio, -1.,1.)
	
	if(radial){
		var _len = point_distance(0,0,val_x,val_y);
		if(_len > 1){
			val_x /= _len
			val_y /= _len
		}
	}
}