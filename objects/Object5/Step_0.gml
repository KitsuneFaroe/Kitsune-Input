if(keyboard_check_pressed(vk_anykey)){
	key = keyboard_key
	char = keyboard_lastchar
	keyboard_lastchar = ""
	//if(char != ""){
	//	var _pair = pairs[$ key]
	//	if(_pair != undefined and _pair != char) show_debug_message($"ehhhh?? {key} : {char},")
	//	show_debug_message($"{key} : \"{char}\",")
	//	pairs[$ key] = char;
	//}
}else
if(mouse_check_button_pressed(mb_any)){
	key = mouse_button
}