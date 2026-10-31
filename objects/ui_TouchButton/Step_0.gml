if(not drag){
	var i = 0
	repeat(4){
		if(device_mouse_check_button(i, mb_left) and 
		position_meeting(device_mouse_x_to_gui(i), device_mouse_y_to_gui(i), self)){
			device_index = i;
			if(val > 0) val = 1 else val = 2;
			break;
		}
		i++
	}
	if(i == 4){
		device_index == -1
		if(val > 0) val = -1 else val = 0;
	}
	
}else{
	if(device_index == -1){
		var i = 0
		repeat(4){
			if(device_mouse_check_button_pressed(i, mb_left) and 
			position_meeting(device_mouse_x_to_gui(i), device_mouse_y_to_gui(i), self)){
				device_index = i;
				val = 2
				break;
			}
			i++
		}
	}else{
		if(device_mouse_check_button_released(device_index, mb_left)){
			device_index = -1;
			val = -1;
		}else val = 1
	}
}